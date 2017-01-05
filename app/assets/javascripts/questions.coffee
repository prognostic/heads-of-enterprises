jQuery ->
  $('#questions').sortable
    axis: 'y'
    handle: 'td:first'
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))