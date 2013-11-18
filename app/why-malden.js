define(function (require) {
  var $ = require('jquery');
  require('bootstrap');
  //require('transparency');

  $.getJSON('testimonials.json', function (data) {
    if(!data.length) { return; } // no testimonials to show
    if(1 === data.length) { $('.testimonials .control').hide(); }

    var
      $list = $('.testimonials ul'),
      $tmpl = $('.testimonials .testimonial');

    $tmpl.remove();

    $.each(data, function(idx, item) {
      var $new = $tmpl.clone();
      $new.find('big').text(item.big).end()
          .find('.source').text(item.source).end()
          .find('a').click(function () {
            $('#testimonial-modal')
              .find('.testimonial-content').html(item.html).end()
              .modal();
          }).end()
          .appendTo($list);
    });//end $.each

    $('.testimonials .testimonial:eq(0)').addClass('active');
    $('.testimonials').slideDown();
  });//end $.getJSON

  $('.testimonials .control').click(function (){
    var $this = $(this),
      $items = $this.closest('.testimonials').find('.testimonial'),
      $selected = $items.end().find('.active'),
      old_idx = $selected.index(),
      new_idx = (old_idx + ($this.hasClass('left') ? -1 : 1)) % $items.length;

    $items.eq(old_idx).removeClass('active');
    $items.eq(new_idx).addClass('active');
  });//end .click
});//end define
