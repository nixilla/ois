$(document).ready(function()
{
    $('.institution > .menu > ul > li > a.institution').addClass('on');
    $('.programme > .menu > ul > li > a.programme').addClass('on');
    if(!$('.on').size()) $('.wrapper > .menu > ul > li > a.home').addClass('on');

    $('.wrapper > .menu > ul > li > a').hover(
        function()
        {
            if(!$(this).hasClass('on'))
            {
                $(this).css('background-position','right -33px');
                $(this).children('span').css('background-position','left -33px');
            }
        },
        function()
        {
            $(this).css('background-position','right 0px');
            $(this).children('span').css('background-position','left 0px');
        }
    )
});