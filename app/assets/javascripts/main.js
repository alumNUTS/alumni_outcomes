// window pop-up thanking for survey completion
$(document).ready(function(){
	$(".notice_survey").on("click", function(){
		$(".notice").hide()
	})

//officer's page - sends email with the link to survey to all students in a specific cohort
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

//cohort's page - sending an email with the survey
$(".survey_controller button").on("click",function(event){
  event.preventDefault()
  var cohortId = $(".survey_controller").data("id");
  $(".load").show()
  $.ajax({
      type: 'GET',
      url: "/send_survey/" + cohortId,
      data: cohortId,
      context: this
    }).done(function(){
      $(".load").hide();
      $(this).hide()
      var survey_sent = $("<a>").attr("href", "/cohorts/"+cohortId+"/surveys").text("Survey's results");
      $(".survey_controller").append(survey_sent);
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



//data from surveys
var full_stack = $('.cohort_stats').data('fullstack');
var front_end = $('.cohort_stats').data('frontend');
var back_end = $('.cohort_stats').data('backend');
var full_time = $('.cohort_stats').data('fulltime');
var temp = $('.cohort_stats').data('temptoperm');
var freelance = $('.cohort_stats').data('freelance');

//dev type bar chart
var ctx = $("#myBarChart").get(0).getContext("2d");
var data = {
    labels: ["Type", "Position"],
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(250,219,150,1)",
            strokeColor: "rgba(220,220,220,0.8)",
            highlightFill: "rgba(220,220,220,0.75)",
            highlightStroke: "rgba(220,220,220,1)",
            data: [full_stack, full_time]
        },
        {
            label: "My Second dataset",
            fillColor: "rgba(151,187,205,1)",
            strokeColor: "rgba(151,187,205,0.8)",
            highlightFill: "rgba(151,187,205,0.75)",
            highlightStroke: "rgba(151,187,205,1)",
            data: [front_end, temp]
        },
        {
            label: "My First dataset",
            fillColor: "rgba(89,197,160,1)",
            strokeColor: "rgba(220,220,220,0.8)",
            highlightFill: "rgba(220,220,220,0.75)",
            highlightStroke: "rgba(220,220,220,1)",
            data: [back_end, freelance]
        }


    ]
};

var myBarChart = new Chart(ctx).Bar(data);
})
