// Testimonials carousel - only initialise when the section is visible.
// (The section ships hidden; owl mis-measures widths inside display:none.)
if ($('#testimonials').length && $('#testimonials').is(':visible')) {
    $('#testimonials').owlCarousel({
        loop: true,
        margin: 10,
        responsiveClass: true,
        autoplay: true,
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 1,
            },
            600: {
                items: 1,
            },
            1000: {
                items: 1,
            }
        }
    });
}

// FAQ accordion
$(".faqQuestion").click(function() {
    var item = $(this).closest(".faqItem");
    if (item.hasClass("active")) {
        item.removeClass("active");
    } else {
        $(".faqItem").removeClass("active");
        item.addClass("active");
    }
});
