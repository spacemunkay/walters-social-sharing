$(document).ready(function(){
  $('#object_number').keypress(function(e) {
        if(e.which == 13) {
            $(this).blur();
            $('#submit_button').focus().click();
        }
  });
  $("#submit_button").click(function(){
    obj_num = $("#object_number").val();
    if( obj_num != null || obj_num != undefined){
      window.location.href = "/"+ obj_num;
    }
  });
});
