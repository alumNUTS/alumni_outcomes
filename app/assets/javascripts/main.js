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
      data: cohortId,
      context: this
    }).done(function(){
      $(".load").hide();
      $(this).hide()
      var survey_sent = $("<small>").text("Survey's sent");
      $(this).closest(".officer_survey").append(survey_sent)
      ;
    })
  })

// form if employed - the hidden div with company name and start date appears
  $(".checkbox").change(function(){
    if($(".employment_info").is(':visible')){
      $(".employment_info").hide()
    } else {
      $(".employment_info").show()
    }
  })


	//silhoutte animation
	var count = 1
  var starting = setInterval(function () {
    $('#person' + count).fadeIn(100)
    count += 1
    if (count > 30) {
    clearInterval(starting)
    }
  }, 100)

})

