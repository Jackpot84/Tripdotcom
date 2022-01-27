
function active_sidebar(num1,num2) {
	
	$('.nav>li.1depth:nth-of-type('+num1+')').addClass( 'menu-open' );
	$('.nav>li.1depth:nth-of-type('+num1+')>a').addClass( 'active' );
	$('.nav>li.1depth:nth-of-type('+num1+')>ul>li:nth-of-type('+num2+')>a').addClass( 'active' );
		
	
}

