$(function(){
  var limitDiv = $("#limit");
  var limit = limitDiv.data("limit");
  var button = $("input");
  $("textarea").on("input paste keyup", function(){
    var total = this.value.length;
    var diff = limit- total;
    var condition = diff < 0 || total === 0;
    limitDiv.text(diff).toggleClass("red", condition);
    button.prop("disabled", condition);
  }).trigger("keyup");
})
