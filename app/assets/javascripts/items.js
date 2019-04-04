$(document).ready(function() {

  $("#store-drop-down").change(function(e) {
    var store_id = e.target.value;
    var url = '/get_drop_down_options?store_id=' + store_id
    Rails.ajax({
      url: "/get_drop_down_options?store_id=" + store_id,
      type: "get",
      success: function(data) {
        $('#zone-drop-down').html(data.html)
      }
    })
  })
});
