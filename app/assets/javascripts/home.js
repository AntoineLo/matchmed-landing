$(document).ready(function(){

  $(function() {
    $( "#speciality-locum" ).selectmenu();
    $( "#speciality-practice" ).selectmenu();
  });

  $('#locum-button').click(function () {
    $('#practice-button').removeClass('btn-blue-selected');
    $('#practice-button').addClass('btn-transparent');
    $('#locum-button').removeClass('btn-transparent');
    $('#locum-button').addClass('btn-blue-selected');
    $('#search-box-locum').removeClass('hidden');
    $('#search-box-practice').addClass('hidden');
    $('.ui-selectmenu-button').attr('style', 'min-width: 250px;');
  });
  $('#practice-button').click(function () {
    $('#locum-button').removeClass('btn-blue-selected');
    $('#locum-button').addClass('btn-transparent');
    $('#practice-button').removeClass('btn-transparent');
    $('#practice-button').addClass('btn-blue-selected');
    $('#search-box-practice').removeClass('hidden');
    $('#search-box-locum').addClass('hidden');
    $('.ui-selectmenu-button').attr('style', 'min-width: 250px;');
  });
});
