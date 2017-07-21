function upgradeStudent() {
  event.preventDefault();
  var userId = $(this).parent().parent().attr('id');
  var userName = $(this).parent().parent().attr('id');
  $.ajax({
    type: "PUT",
    url: "/api/users/" + userId + ".json",
    data: JSON.stringify({
      user: { admin: true }
    }),
    contentType: "application/json",
    dataType: "json",
    complete: function() {
        location.reload(true);
      }
  })
  .done(function(data) {
    console.log(data);

    $('#' + userId).addClass('.table-success');

  });
}

function downgradeAdmin() {
  event.preventDefault();
  var userId = $(this).parent().parent().attr('id');

  $.ajax({
    type: "PUT",
    url: "/api/users/" + userId + ".json",
    data: JSON.stringify({
      user: { admin: false }
    }),
    contentType: "application/json",
    dataType: "json",
    complete: function() {
        location.reload(true);
      }
  }).done(function(data) {
      console.log(data);
    });
}

// $(document).on('turbolinks:load', function() {
//     submits();
// });


// function.submits(){};

$(document).ready(function(){
    $(".upgrade_student").bind('click', upgradeStudent);
    $(".downgrade_admin").bind('click', downgradeAdmin);
});
