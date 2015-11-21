'use strict';


requirejs.config({
    paths: {
    	'jquery': 'lib/jquery-1.8.3',
    	'dust' : 'lib/dust'
    }
});


require(["jquery","dust"], function ($,dust) {

    var app = {
        initialize: function () {
	    	$( ".addToCart" ).click(function(ev) {
	    	  var productId = ev.currentTarget.getAttribute("alt");
	    	  console.log("The product id of the product selected is "+productId);
			  $.ajax({url: "http://localhost:8000/addToCart?productId="+parseInt(productId), success: function(result){
			        if(result === 'loginError') {
			        	window.location = "http://localhost:8000/loginError";
			        }else if(result === "added") {
			        	$("#productAddedToCart").css("display","block");
			        	$("#productAddedToCart").css("left","50%");
			        	$('#productAddedToCart').delay(2000).fadeOut('slow');
			        }
			   }});
			});

			$( "#viewCart" ).click(function(ev) {
			  $.ajax({url: "http://localhost:8000/viewCart", success: function(result){
			        if(result === 'loginError') {
			        	window.location = "http://localhost:8000/loginError";
			        }else {
			        	console.log("The json payload of products is "+JSON.stringify(result));
			        	dust.render("viewCart",result,function(err,res) {
			        		console.log("err "+JSON.stringify(err)+" res "+JSON.stringify(res));
			        		window.location = "http://localhost:8000/viewCart";
			        	});
			        }
			   }});
			});
        }
    };

    app.initialize();

});
