$(window).bind("load", function ()
{
    var footer = $("footer");
    footer.css({ 'margin-top': '0px' });
    var pos = footer.position();
    var height = $(window).height();
    height = height - pos.top;
    height = height - footer.height();
    if (height > 0)
    {
        footer.css({
            'margin-top': height + 'px'
        });
    }
});

$(window).resize(function() {
    $('footer').css({ 'margin-top': 0 + 'px' });
    var footer = $("footer");
    var pos = footer.position();
    var height = $(window).height();
    height = height - pos.top;
    height = height - footer.height();
    if (height > 0) {
        footer.css({
            'margin-top': height + 'px'
        });
    }
});
