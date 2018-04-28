// gnb open
function gnbOpen () {
	var target = $(this).parent()
	if ($(window).width() < 1200) {
		target.parent().find('.active').removeClass('active').children('ul').stop().slideUp(300)
		target.addClass('active').children('ul').stop().slideDown(300)
		return false
	}
}

function toggleMenu () {
	$(this).toggleClass('active').next().stop().slideToggle(300)
}

//stickyMenu
function stickyMenu(){
	if($(this).width() < 1199){
		if($(this).scrollTop() > $('#header').height()){
			$('.gnb').addClass('sticky')
		} else {
			$('.gnb').removeClass('sticky')
		}
	} else {
		$('.gnb').removeClass('sticky')
		$('.gnb *').removeClass('active').removeAttr('style')
	}
}

$(document)
.on('click', 'a[href=#]', function () { return false })
.on('click', '.gnb>ul>li>a', gnbOpen)
.on('click', '.toggle_menu', toggleMenu)

$(window)
.on('scroll load',stickyMenu)