$(window).bind("load", function ()
{
    var footer = $("footer");
    var nav = $("header");
    var height = $(window).height();
    height = height - footer.height() - nav.height();
    $('#sections').find('section').css({ 'min-height' : height + 'px' });
});

$(window).resize(function() {
    var footer = $("footer");
    var nav = $("header");
    var height = $(window).height();
    height = height - footer.height() - nav.height();
    $('#sections').find('section').css({ 'min-height' : height + 'px' });
});
