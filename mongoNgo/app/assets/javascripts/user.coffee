# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.pagination[remote=true] a').live 'click', ->
  window.history.pushState(null, 'hi', $(this).attr("href"))
  $.rails.handleRemote($(this))
  return false
