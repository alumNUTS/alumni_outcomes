// window pop-up thanking for survey completion
$(document).ready(function(){
	$(".notice_survey").on("click", function(){
		$(".notice").hide()
	})

  $(".officer_cohort").on("click", "#send_survey", function(event){
    $(".load").show()
    var cohortId = $(this).closest(".officer_cohort").data("id");
    $.ajax({
      type: 'GET',
      url: "/send_survey/" + cohortId,
      data: cohortId
    }).done(function(){
      $(".load").hide()
    })
  })


