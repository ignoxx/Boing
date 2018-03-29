// **************************************************
// Copyright (C) 2014, Sam Whillance
//
// File:			jchtml5.js
// Author:			Sam Whillance
// Description:		Extension for the JCHTML5 Engine
//***************************************************

// Hide the address bar
function jchtml5_hide_address_bar(){
	if(!window.location.hash){
		var divh = document.getElementById('gm4html5_div_id').style.height;
		if (divh < (window.outerHeight + 200)){
			document.getElementById('gm4html5_div_id').style.height = (window.outerHeight + 200) + 'px';
		}
		
		setTimeout ( function(){ if (window.pageYOffset == 0)window.scrollTo(window.pageXOffset,1); },50);
	}
}