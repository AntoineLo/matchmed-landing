$(document).ready(function(){

  $('#locum-button').click(function () {
    $('#practice-button').removeClass('btn-blue-selected');
    $('#practice-button').addClass('btn-transparent');
    $('#locum-button').removeClass('btn-transparent');
    $('#locum-button').addClass('btn-blue-selected');
    $('#search-box-locum-toggle').removeClass('hidden');
    $('#search-box-practice-toggle').addClass('hidden');
    $('.ui-selectmenu-button').attr('style', 'min-width: 250px;');
    // Change active tab in "Comment ça marche" section
    $('#locum-tab').addClass('tab-active');
    $('#practice-tab').removeClass('tab-active');
    $('#how-practices').addClass('hidden');
    $('#how-locums').removeClass('hidden');
  });
  $('#practice-button').click(function () {
    $('#locum-button').removeClass('btn-blue-selected');
    $('#locum-button').addClass('btn-transparent');
    $('#practice-button').removeClass('btn-transparent');
    $('#practice-button').addClass('btn-blue-selected');
    $('#search-box-practice-toggle').removeClass('hidden');
    $('#search-box-locum-toggle').addClass('hidden');
    $('.ui-selectmenu-button').attr('style', 'min-width: 250px;');
    // Change active tab in "Comment ça marche" section
    $('#practice-tab').addClass('tab-active');
    $('#locum-tab').removeClass('tab-active');
    $('#how-practices').removeClass('hidden');
    $('#how-locums').addClass('hidden');
  });

// Change active tab in "Comment ça marche" section
  $('#practice-tab').click(function () {
    $('#practice-tab').addClass('tab-active');
    $('#locum-tab').removeClass('tab-active');
    $('#how-practices').removeClass('hidden');
    $('#how-locums').addClass('hidden');
  });

  $('#locum-tab').click(function () {
    $('#locum-tab').addClass('tab-active');
    $('#practice-tab').removeClass('tab-active');
    $('#how-practices').addClass('hidden');
    $('#how-locums').removeClass('hidden');
  });

  // Smooth scrolling when clicking on anchor links
  $(function() {
    $('a[href*="#"]:not([href="#"])').click(function() {
      if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
        if (target.length) {
          $('html, body').animate({
            scrollTop: target.offset().top
          }, 1000);
          return false;
        }
      }
    });
  });

  // Track clicks in analytics
  $('#register-button').on('click', function() {
    analytics.track('Signed up for launch');
  });
});

