
$(function() {

    // scroll up plugin
    $.scrollUp({
        scrollText: "Top"
    });
});

$(window).load(function() {
    $('.js-viewport').waypoint(function() {
        $(this).css('visibility', 'visible');
        $(this).addClass($(this).data('animate'));
    }, {offset: '90%', triggerOnce: true});
});
