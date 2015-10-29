// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(window).load(function() {
	var primaryColorArray = ["#000000", "#0000FF", "#FF8C00"];
	var secondaryColorArray = ["#FFD700", "#FFFFFF", "#6B8E23"];

	setInterval(function() {
		var color_1 = primaryColorArray[Math.floor(Math.random()*primaryColorArray.length)];
		var color_2 = secondaryColorArray[Math.floor(Math.random()*primaryColorArray.length)];

		$("h1").css({'color': color_1, "transition":"background-color 0.5s ease"});
		$("#logo").css({'color': color_2, "transition":"background-color 0.5s ease"});
		$("nav").css({'background-color': color_1, "transition":"background-color 0.5s ease"});
		$("nav").css({'color': color_2, "transition":"background-color 0.5s ease"});
		$("html").css({'background-color': color_2, "transition":"background-color 0.5s ease"});
		$("body").css({'background-color': color_2, "transition":"background-color 0.5s ease"}); 
	}, 60000);
	

});


