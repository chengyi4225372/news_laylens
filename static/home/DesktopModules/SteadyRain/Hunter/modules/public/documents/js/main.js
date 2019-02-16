var productList = [];
var documents = [];
var productLines = [];
var products = [];
var productsAndLines = [];
var filterMenu = $('#filter-menu');
var filterContent = $('#filter-content');

$(document).ready(function() {
    
    $.crud($.service('/document', 'GetProductList'), 'get').done(function(data, status, xhr) {
        productList = data;
        //Create Array of ProductLine objects with there product arrays
        for (i = 0; i < productList.length; i++) { 
            var document = productList[i];
            var productLine = document.Category;
            var productLineProducts = []
            if(productLines.indexOf(productLine) < 0){
                productLines.push(productLine);
                var productsPerCategory = [];
                
                for (var j = 0; j < productList.length; j++) {
                    if (productList[j].Category.indexOf(productLine) > -1){
                        var product = productList[j].SubCategory;
                        if(productsPerCategory.indexOf(product) < 0){
                            productsPerCategory.push(product);
                            productLineProducts.push(productList[j]);
                        }
                    }              
                }
                productsAndLines.push({'ProductLine': productLine,'Products':productLineProducts});
            }
        }
    }).complete(function(){        
        for(i = 0; i < productsAndLines.length; i++){
            var menuOption = BuildFilterMenuOption(productsAndLines[i].ProductLine);
            var radioButtons = BuildFilterRadioButtons(productsAndLines[i].ProductLine,productsAndLines[i].Products);
            filterMenu.append('<div class="menu-option-wrapper">'+menuOption + radioButtons+'</div>');
        }
        
    });

    $.crud($.service('/document', 'GetDocuments'), 'get').done(function(data, status, xhr) {
        documents = data;
    });

});
$(window).load(function(){
    $("input[name='productRadio']").change(function(){
        var selectedProduct = $("input:radio[name='productRadio']:checked").val();
        var selectedProductLine = $("input:radio[name='productRadio']:checked").attr('product-line');
        FilterDocuments(selectedProduct, selectedProductLine)
    });

    // This is a fix, for some reason the menu has stopped working like the mobile menu
    $(".menu-option", ".filter-dropdown-column").click(function(){
        var radioButtonList = $(this).siblings('.secondary-menu-wrapper');
        if($(radioButtonList).hasClass('active')){
            $(radioButtonList).removeClass('active');
        }
        else{
            $(radioButtonList).addClass('active');
        }
    });
});

function BuildFilterMenuOption(productLine){
    var menuOptionString = '<div class="menu-option" data-ix="mobile-menu-dropdown">';
    menuOptionString += '<div class="w-row">'
    menuOptionString += '<div class="w-col w-col-10">'
    menuOptionString += '<div class="filter side-menu-dropdown-option">'
    menuOptionString += '<div class="text">'+productLine+'</div>'
    menuOptionString += '</div>'
    menuOptionString += '</div>'
    menuOptionString += '<div class="w-col w-col-2">'
    menuOptionString += '<div class="side-menu-arrow-column"><img class="menu-arrow" src="/portals/0/Images/menu-arrow-red.svg"></div>'
    menuOptionString += '</div>'
    menuOptionString += '</div>'
    menuOptionString += '</div>'
    return menuOptionString;
}

function BuildFilterRadioButtons(productLine, products){
    var radioButtonsString = '<div class="secondary-menu-wrapper" style="height: 0px; transition: height 300ms cubic-bezier(0.445, 0.05, 0.55, 0.95);">';
    radioButtonsString += '<div class="filter-option secondary-menu-option">'
    radioButtonsString += '<div class="filter-input side-menu-dropdown-option">'
    for (var i = 0; i < products.length; i++) {
        var radioButton = BuildRadioButton(productLine,products[i]);
        radioButtonsString += radioButton;                   
    }
    radioButtonsString += '</div>'
    radioButtonsString += '</div>'
    radioButtonsString += '</div>'
    return radioButtonsString;
};

function BuildRadioButton(productLine,product){
    var radioButtonString = '<div class="filter-input-field"><input class="productRadio" data-name="Radio" name="productRadio" type="radio" value="'+product.SubCatValue+'" product-line="'+productLine+'">'+product.SubCategory+'</input></div>'
    return radioButtonString;
};

function FilterDocuments(subcategory, category){
    var filteredDocuments = [];
    for (i = 0; i < documents.length; i++) { 
        var document = documents[i];
        if(document.Category.indexOf(category) > -1){
            if(document.SubCategory.indexOf(subcategory) > -1){
                filteredDocuments.push(document);
            }
        }
        
    }
    BuildDocuments(filteredDocuments);
}

function BuildDocuments(filteredDocuments){
    
    filterContent.empty();
    var filteredDocumentIds = [];
    var groupingHeader = "";
    for(i = 0; i < filteredDocuments.length; i++){
        if(filteredDocumentIds.indexOf(filteredDocuments[i].Id) < 0){
            filteredDocumentIds.push(filteredDocuments[i].Id);

            var postDate = filteredDocuments[i].PostDate.split(" ");
            var documentRowString = "";

            if(filteredDocuments[i].GroupingHeader != "None"){
                if(filteredDocuments[i].GroupingHeader != groupingHeader){
                   documentRowString += '<div class="filter-content-row w-row">'; 
                   documentRowString += '<div class="groupingHeader">'; 
                   documentRowString += filteredDocuments[i].GroupingHeader; 
                   documentRowString += '</div>'; 
                   documentRowString += '</div>'; 
                   groupingHeader =filteredDocuments[i].GroupingHeader;
                }
            }
            
            documentRowString += '<div class="filter-content-row w-row">';
            documentRowString += '<div class="w-col w-col-6">'
            documentRowString += '<div class="text">'+filteredDocuments[i].DocumentTitle+'</div>';
            documentRowString += '</div>';
            documentRowString += '<div class="w-col w-col-4">';
            documentRowString += '<div class="text">'+postDate[0]+'</div>';
            documentRowString += '</div>';
            documentRowString += '<div class="centered-column w-col w-col-2">'
            // documentRowString += '<a href="javascript:DownloadDocument('+filteredDocuments[i].Id+')"><img class="downloadImage" src="/portals/0/Images/download-icon.svg"></a>'
            documentRowString += '<a target="_blank" href="/download?id='+filteredDocuments[i].Id+'"><img class="downloadImage" src="/portals/0/Images/download-icon.svg"></a>'
            documentRowString += '</div>'
            documentRowString += '</div>'

            filterContent.append(documentRowString);
        }
    }
}


// function DownloadDocument(id){
//     $.crud($.service('/document', 'GetDocumentByID?id='+id), 'get');
// }



function BindStickyEvents() {
	if($('.sticky-item').length){
		var stickyContainer = $('.sticky-container');
		var stickyItem = $('.sticky-item');
		var stickyBase = $('.sticky-base');
		var documentsContainer = $('.documentsPanel');

		if (stickyItem.height() < $(window).height()) {
			if (stickyBase.position().top < scrollY) {
				stickyBase.height($('.filter-content-column').height());
				stickyItem.addClass('sticky-fixed');
				var windowWidth = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
				if(windowWidth > 900){
					stickyItem.width(stickyBase.width());
				}
			}
			else {
				stickyBase.css('height', 'unset');
			}
		} else {
			stickyBase.css('height', 'unset');
		}

		$(window).resize(function() {
			stickyItem.width(stickyBase.width());
		});

		$(window).scroll(function () {
			var windowWidth = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
			if(windowWidth > 900){
				if($('.sticky-item').length){
					var windowHeight = $(window).height();
					var stickyItemHeight = stickyItem.height();
					var scrollValue = scrollY;
					var stickyBasePositon = stickyBase.position().top;
					var documentsPosition = documentsContainer.position().top;
					var introHeight = $('.intro-section').outerHeight();
					stickyBasePositon = stickyBasePositon + documentsPosition;
					var stickyContainerHeight = stickyContainer.height();
					//var navHeight = $('#productSupportNavContainer').height();

					if (stickyItem.hasClass('sticky-fixed')) {
						if (stickyItemHeight > windowHeight) {
							stickyItem.removeClass('sticky-fixed');
							stickyBase.css('height','unset');
						}
						if (stickyBasePositon > scrollValue) {
							stickyBase.height(stickyContainerHeight - 66);
							stickyItem.removeClass('sticky-fixed');
						}


					} else {
						if (stickyItemHeight < windowHeight) {
							if (stickyBasePositon < scrollValue) {
								stickyBase.height(stickyContainerHeight - 66);
								stickyItem.addClass('sticky-fixed');
								stickyItem.width(stickyBase.width());
							}
							else {
								stickyBase.css('height', 'unset');
							}
						} else {
							stickyBase.css('height', 'unset');
						}
					}

					if ((stickyItemHeight + scrollValue - stickyBasePositon) > stickyContainerHeight) {
						$('.sticky-fixed').addClass('sticky-absolute').removeClass('sticky-fixed');
					} else {
						$('.sticky-absolute').addClass('sticky-fixed').removeClass('sticky-absolute');
					}
				}
			}
			else{
				stickyBase.css('height','unset');
				stickyItem.css('width','unset');
			}
		});
	}
}

$(window).load(function () {
    BindStickyEvents();
});
