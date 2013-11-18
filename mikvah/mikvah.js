/*jslint indent: 2, maxlen: 120, browser: true, todo: true*/
/*global requirejs, require, define, console*/
requirejs.config({
  paths: {
    'bootstrap': '//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/js/bootstrap.min',
    'bootstrap-datepicker': '//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min',
    'jquery': '//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min',
    'jquery-ui': '//code.jquery.com/ui/1.10.3/jquery-ui'
  },
  shim: {
    'bootstrap': ['jquery'],
    'boostrap-datepicker': ['bootstrap'],
    'jquery-ui': ['jquery']
  }
});

define(function (require) {
  'use strict';
  require('bootstrap');
  require('jquery-ui');

  var show_msg = function (status, msg) {
    $('#flash')
      .removeClass('alert-danger alert-success')
      .addClass('alert-' + status)
      .find('.msg')
        .text(msg)
      .end()
      .removeClass('hidden').show();
  };
  
  $('#flash .close').click(function () {
    $(this).closest('.alert').fadeOut();
  });

  $('#appt-date')
    .datepicker({ defaultDate: 1, minDate: 1, maxDate: '+7d' });

  $('.modal').on('show.bs.modal', function () {
    $(this).find('form')[0].reset();
  }).on('shown.bs.modal', function () {
    $(this).find('.form-control:eq(0)').focus().end();
  });

  $('#make-appointment').on('show.bs.modal', function () {
    $('#appt-date')
      .datepicker('setDate', '+1d');
  }).find('input').blur(function () {
    var $this = $(this),
      $item = $this.closest('.form-group');

    $item.removeClass('has-error');
    if ('' === $this.val()) { $item.addClass('has-error'); }
  }).end().find('form').submit(function (e) {
    e.preventDefault(); // don't actually submit the form

    var $this = $(this);

    $this.find('.form-group').removeClass('has-error');
    $this.find('input').each(function () {
      if ('' === $(this).val().trim()) {
        $(this)
          .closest('.form-group')
            .addClass('has-error')
          .end();
      }//end if
    });//end .each

    if ($this.find('.has-error').length) {
      $this.find('.has-error input:eq(0)').focus();
      return false;
    }//end if: did not continue

    $.post($this.attr('action'), $this.serialize()).fail(function () {
      show_msg('danger', 'There was a problem. Please send an email.');
      $this.closest('.modal').modal('hide');
    }).done(function (result) {
      if ('ok' === result.status) {
        show_msg('success', 'Your request has been submitted.');
      } else {
        show_msg('danger', 'There was a problem. Please send an email.');
      }//end if: updated message

      $this.closest('.modal').modal('hide');
    });

    return false;
  }).end();

  $('#get-directions .btn-primary').click(function () {
    var $this = $(this);
    $this.closest('.modal').modal('hide');
  });
});