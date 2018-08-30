# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.delData = (id, name)->
  if confirm('「' + name + '」のデータを削除しますか？')
    document.location = "/foodstuffs/delete/" + id;
    return false;
