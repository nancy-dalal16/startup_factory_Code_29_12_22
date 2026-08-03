$(".mobile-navbar-btn").click(function() {
    $(".navigationHolder, .navigation").animate({
        right: "0px"
    });
});

$(".menuClose").click(function() {
    $(".navigationHolder, .navigation").animate({
        right: "-110%"
    });
})
