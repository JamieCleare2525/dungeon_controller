document.addEventListener("turbolinks:load", function() {
  $("#assign_character_btn").click(function(event){
    event.preventDefault();
    selected_characters = $("#campaign_available_characters option:selected");
    selected_characters.each(function(){
      $("#campaign_available_characters").find($(this)).remove();
      $('#campaign_assigned_characters').append($('<option>', {
        value: $(this).val(),
        text: $(this).text()
      }));
    });
  });

  $("#unassign_character_btn").click(function(event){
    event.preventDefault();
    selected_characters = $("#campaign_assigned_characters option:selected");
    selected_characters.each(function(){
      $("#campaign_assigned_characters").find($(this)).remove();
      $('#campaign_available_characters').append($('<option>', {
        value: $(this).val(),
        text: $(this).text()
      }));
    });
  });

  $(".new_campaign").on("submit",function(event){
    event.preventDefault();
    $("#campaign_assigned_characters").find("option").attr("selected", true);
    $(this).unbind().submit();
  });

  $(".edit_campaign").on("submit",function(event){
    event.preventDefault();
    $("#campaign_assigned_characters").find("option").attr("selected", true);
    $(this).unbind().submit();
  });
});
