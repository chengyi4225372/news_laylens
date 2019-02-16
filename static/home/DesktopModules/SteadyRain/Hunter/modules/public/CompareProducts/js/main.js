
var sticky = $('.compare-products').stickem();
$(function () {
	$('.DnnModule-DNN_HTML, .tipButtons div').hide();
    sticky;
    DeterminButtons();
    
    $.CompareProducts = {};
			
    var $container = $('.steadyrain.compare-products');
    var $contactModal = $('.steadyrain.compare-products .contact-modal');

    var segmentId = getParameterByName('segmentId');
    var lineId = getParameterByName('lineId');
    var productId = getParameterByName('productId');


    var viewModel = {
        ProductSegments: ko.observableArray(),
        ProductLines: ko.observableArray(),
        Products: ko.observableArray(),
        selectedProducts: ko.observableArray([]),
        selectedSegments: ko.observableArray([]),
        selectedLines: ko.observableArray([]),
        filteredSegments: ko.observableArray(),
        pageSize: ko.observable(9),
        pageIndex: ko.observable(0),
        showPageNumber: function (data) {
            return (this.pageIndex() == data || (this.pageIndex() + 3 >= data && data > this.pageIndex()) || (this.maxPageIndex() - 3 <= data) && data < this.pageIndex()); 
        },
        previousPageClick: function () {
            this.pageIndex(this.pageIndex() - 1);
        },
        nextPageClick: function () {
            this.pageIndex(this.pageIndex() + 1);
        },
        productClick: function () {
            if (viewModel.selectedProducts().length > 3) {
                viewModel.selectedProducts.pop();
                return false;
            } else {
                return true;
            }
        },
        removeBreadcrumbClick: function () {
            viewModel.selectedProducts.remove(this);
        },
        resetClick: function () {
            viewModel.selectedSegments([]);
            viewModel.selectedLines([]);
            viewModel.selectedProducts([]);
			$('.DnnModule-DNN_HTML').hide();
        },
        print: function () {
            window.print();
        },
        loadFromUrl: function() {
            if (segmentId && lineId && productId) {
                viewModel.selectedSegments(segmentId);
                ko.utils.arrayForEach(viewModel.ProductLines(), function (prodLine) {
                    if (prodLine.Id === parseInt(lineId)) {
                        viewModel.selectedLines.push(prodLine);
                    }
                });
                ko.utils.arrayForEach(viewModel.Products(), function(prod) {
                    if (prod.Id === parseInt(productId)) {
                        viewModel.selectedProducts.push(prod);
                    }
                });
            }
        }
    }

    viewModel.filteredProductLines = ko.computed(function () {
        
        var lineArray = [];
        viewModel.selectedLines([]);
        viewModel.selectedProducts([]);
        ko.utils.arrayForEach(viewModel.selectedSegments(), function (segment) {
            var lineItem = ko.utils.arrayFilter(viewModel.ProductLines(), function (line) {
                return line.SegmentId == segment;
            });
            lineArray = lineArray.concat(lineItem);
        });

        $('.compare-results', $container).hide();
        $('.right-pane', $container).show();

        return lineArray.sort(function(left, right) {
            return left.Name == right.Name ? 0 : (left.Name < right.Name ? -1 : 1);
        });
    }, viewModel);

    viewModel.filteredProducts = ko.computed(function () {
        
        var productArray = [];

        if (viewModel.selectedLines().length == 0) {
                productArray = ko.utils.arrayFilter(viewModel.Products(), function (product) {

                    return product.Line.SegmentId == viewModel.selectedSegments();
                });
                

        } else {
            ko.utils.arrayForEach(viewModel.selectedLines(), function (line) {
                var lineItem = ko.utils.arrayFilter(viewModel.Products(), function (product) {
                    return product.Line.Id == line.Id;
                });
                productArray = productArray.concat(lineItem);
            });
        }

        return productArray;
    }, viewModel);

    viewModel.unionFeatures = ko.computed(function () {

        var productFeatures = [];
        var distinctFeatures = [];

        ko.utils.arrayForEach(viewModel.selectedProducts(), function (product) {
            productFeatures = productFeatures.concat(product.ProductFeatures);
        });
        
        $.each(productFeatures, function (i, item) {
            var featureObject = $.grep(distinctFeatures, function (e) { return e.Id == item.Id; });
            if (featureObject.length == 0) {
                distinctFeatures.push(item);
            }
        });
        
        return distinctFeatures;

    }, viewModel);

    viewModel.unionAttributes = ko.computed(function () {

        var productAttributes = [];
        var distinctAttributes = [];

        ko.utils.arrayForEach(viewModel.selectedProducts(), function (product) {
            productAttributes = productAttributes.concat(product.Attributes);
        });

        $.each(productAttributes, function (i, item) {
            var attributeObject = $.grep(distinctAttributes, function (e) { return e.Id == item.Id; });
            if (attributeObject.length == 0) {
                distinctAttributes.push(item);
            }
        });

        return distinctAttributes;

    }, viewModel);
  
    viewModel.distinctCategories = ko.computed(function () {
        var categories = [];
        
        //doesn't fire when dependent on unionAttributes so use the selectedProducts
        ko.utils.arrayForEach(viewModel.selectedProducts(), function (product) {
            ko.utils.arrayForEach(product.Attributes, function(attribute) {
                categories = categories.concat(attribute.CategoryName);
            });
        });

        return ko.utils.arrayGetDistinctValues(categories).sort();

    }, viewModel);

    viewModel.pagedItems = ko.dependentObservable(function () {
        var size = this.pageSize();
        var start = this.pageIndex() * size;
        return this.filteredProducts();
    }, viewModel);

    viewModel.maxPageIndex = ko.dependentObservable(function () {
        return Math.ceil(this.filteredProducts().length / this.filteredProducts().length) - 1;
    }, viewModel);

    viewModel.pages = ko.dependentObservable(function () {
        return ko.utils.range(0, this.maxPageIndex());
    }, viewModel);

    viewModel.filter = function (filter) {
        this.currentFilter(filter);
    }

    $('.btn-compare', $container).on('click', function () {
        $('.right-pane', $container).hide();
        $('.compare-results', $container).show();
		$('.tipsInspection, .tipsOnCarBrakeLathe, .tipsBenchBrakeLathe, .tipsTireChanger, .tipsWheelBalancer, .tipsLiftRacks').css('height','auto');
    });
    $('.btn-back', $container).on('click', function () {
        $('.compare-results', $container).hide();
        $('.right-pane', $container).show();
    });

    $container.on('click', '.buy-now', function () {
        var comment = $(this).data('comments');
        var accountNumber = $(this).data('accountnumber');
        $('#globalcontactform-comment').val('I would like information on the following Product: ' + comment);
        $('#Origin').val('Comparison');
        $('#ContactType').val('Sales');
        $('#HiddenRepNumber').val(accountNumber);
        $('#global-contactusform').show();
    });



    $.CompareProducts.getData = function () {

        //probably move to codebehind

        //    $.crud($.service('/ProductSegments'))
        //    .done(function (data) {

        //if (data.length > 0) {
        ko.utils.arrayPushAll(viewModel.ProductSegments, productSegments);

        //        }
        //    });

        //    $.crud($.service('/ProductLines'))
        //    .done(function (data) {

        //if (data.length > 0) {
        ko.utils.arrayPushAll(viewModel.ProductLines, productLines);

        //        }
        //    });

        //    $.crud($.service('/Products'))
        //    .done(function (data) {

        //if (data.length > 0) {
        ko.utils.arrayPushAll(viewModel.Products, products);

        //        }
        //    });
    };

    $.CompareProducts.intialize = function() {
        $.CompareProducts.getData();
        viewModel.loadFromUrl();
        ko.applyBindings(viewModel);
    };

    function getParameterByName (name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }

    $.CompareProducts.intialize();

    function DeterminButtons(){
        var windowWidth = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
        if(windowWidth < 992){
            $('.sticky-comparison-buttons').append($('.comparison-buttons'));
        }
        else{
            $('.non-sticky-comparison-buttons').append($('.comparison-buttons'));
        }
        
    }

    $(window).resize(function (){
        DeterminButtons();
    });
    
});

$(window).load(function () {
    
	var referrer =  document.referrer;
	
	var clickCheckCompare = setInterval(function () {
		
		if(referrer.indexOf('/wheel-balancers') > -1){
			$('input[type="radio"][value="1"]').click();
			if ($('.compare-pane .product-model').length){
				clearInterval(clickCheckCompare);
			}
            stickify();
		}
        if(referrer.indexOf('/alignment-systems') > -1){
			$('input[type="radio"][value="5"]').click();
			if ($('.compare-pane .product-model').length){
				clearInterval(clickCheckCompare);
			}
            stickify();
		}
        if(referrer.indexOf('/lift-racks') > -1){
		    $('input[type="radio"][value="6"]').click();
			if ($('.compare-pane .product-model').length){
				clearInterval(clickCheckCompare);
			}
            stickify();
		}
        if(referrer.indexOf('/tire-changers') > -1){
			$('input[type="radio"][value="7"]').click();
			if ($('.compare-pane .product-model').length){
				clearInterval(clickCheckCompare);
			}
            stickify();
		}
        if(referrer.indexOf('/brake-lathes') > -1){
			$('input[type="radio"][value="8"]').click();
			if ($('.compare-pane .product-model').length){
				clearInterval(clickCheckCompare);
			}
            stickify();
		}
        if(referrer.indexOf('/inspection') > -1){
			$('input[type="radio"][value="29"]').click();
			if ($('.compare-pane .product-model').length){
				clearInterval(clickCheckCompare);
			}
            stickify();
		}
        
	}, 300);
			
	var inspectionLink= $('#inspectionTip').closest('div'),
		brakeLatheLink = $('#brakeLatheTip').closest('div'),
		alignmentLink = $('#alignmentTip').closest('div'),
		tireChangerLink = $('#tireChangerTip').closest('div'),
		wheelBalancerLink = $('#wheelBalancerTip').closest('div'),
		liftRackLink = $('#liftRackTip').closest('div');

	function DisplayTips(tipLink){
		$('.DnnModule-DNN_HTML, .tipButtons div').hide();
        $(tipLink).show();
	}

	$('input[type="radio"][value="6"]').click(function () {		 
		DisplayTips(liftRackLink);	
        stickify();
	});
	$('input[type="radio"][value="5"]').click(function () {		 
		DisplayTips(alignmentLink);	
        stickify();
	});
	$('input[type="radio"][value="1"]').click(function () {		
		DisplayTips(wheelBalancerLink);	
        stickify();
	});
	$('input[type="radio"][value="7"]').click(function () {		
		DisplayTips(tireChangerLink);	
        stickify();
	});
	$('input[type="radio"][value="8"]').click(function () {			
		DisplayTips(brakeLatheLink);
        stickify();
	});
	$('input[type="radio"][value="29"]').click(function () {
		DisplayTips(inspectionLink);	
        stickify();
	}); 
});

function stickify(){
    $('.product-model  img').load(function(){
        sticky.destroy();
        sticky = $('.compare-products').stickem();
        sticky;
    });
}