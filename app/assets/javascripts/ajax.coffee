# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on 'turbolinks:load', ->
  $('#ajax_form').on 'ajax:send', ->
    console.log('starting..')
    $('#progress').html '通信中...'
  .on 'ajax:complete', ->
    $('#progress').html ''
  # Ajax通信に成功したタイミングで実行
  $('#ajax_form').on 'ajax:success', (e) ->
    data = e.detail[0]; # Rails 5.1からdataの取り方が変更になった
    # <ul id='result'>要素の配下を空に
    $('#result').empty()
    # 取得したデータを元に<li>を生成
    $.each data, ->
      $('#result').append(
        $('<li></li>').append(
          $('<a></a>').attr('href', 'http://www.wings.msn.to/index.php/-/A-03/').append(@title)
        )
      )
