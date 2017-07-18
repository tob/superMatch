function upgradeStudent() {
  var userId = $(this).parent().parent().attr('id');
  $.ajax({
    type: "PUT",
    url: "/api/users/" + userId + ".json",
    data: JSON.stringify({
      user: { admin: true }
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);
    submits();
  });
}

function downgradeTeacher() {
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
      submits();
    });
}

function submits() {
  $(".upgrade_student").bind('click', upgradeStudent);
  $(".downgrade_teacher").bind('click', downgradeTeacher);
};

// $(document).on('turbolinks:load', function() {
//     submits();
// });

$(document).ready(function(){
  submits();
});
