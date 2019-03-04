$(document).ready(function() {
    $('.main-video').slick({
        dots: false,
        arrows: true,
        infinite: true,
    });
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
            $('#goTop').fadeIn();
        } else {
            $('#goTop').fadeOut();
        }
    });
    $('#goTop').click(function() {
        $("html, body").animate({ scrollTop: 0 }, 600);
        return false;
    });
    $(".btn-menu").click(function () {
        $("#navbar-main").toggle('fast');
    });
});
