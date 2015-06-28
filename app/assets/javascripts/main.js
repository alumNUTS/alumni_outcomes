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
      var survey_sent = $("<small>").text("Survey status: Sent");
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

  //data from surveys for a particular cohort
  var full_stack = $('.cohort_stats').data('fullstack');
  var front_end = $('.cohort_stats').data('frontend');
  var back_end = $('.cohort_stats').data('backend');
  var full_time = $('.cohort_stats').data('fulltime');
  var temp = $('.cohort_stats').data('temptoperm');
  var freelance = $('.cohort_stats').data('freelance');
  if( $("#myBarChart").get(0) != undefined && $("#mySurveyPieChart").get(0) != undefined){
    //dev type bar chart for a particular cohort
    var ctxB = $("#myBarChart").get(0).getContext("2d");
    var ctxP = $("#mySurveyPieChart").get(0).getContext("2d");
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

    var outcomesHelped = $('.cohort_stats').data('outcomesHelped');
    var outcomesNotHelped = $('.cohort_stats').data('outcomesNoHelp');

  //pie chart - effectiveness of the outcomes program for a particular cohort
    var dataPie = [
        {
          value: outcomesHelped,
          color:"#AB1919",
          highlight: "#FF5A5E",
          label: "Red"
        },
        {
            value: outcomesNotHelped,
            color: "#46BFBD",
            highlight: "#5AD3D1",
            label: "Green"
        },
    ];
    var myBarChart = new Chart(ctxB).Bar(data);
    var mySurveyPieChart = new Chart(ctxP).Pie(dataPie)
  }


  // data for a bar chart for the whole program
  var fullStack = $('.program_stats').data('fullStack');
  var frontEnd = $('.program_stats').data('frontEnd');
  var backEnd = $('.program_stats').data('backEnd');
  var fullTime = $('.program_stats').data('fullTime');
  var tempToPerm = $('.program_stats').data('tempToPerm');
  var freelanceP = $('.program_stats').data('freelance');

  //bar chart for the whole program
  if($("#myProgramBarChart").get(0) != undefined && $("#myProgramPieChart").get(0) != undefined){
  var ctxBP = $("#myProgramBarChart").get(0).getContext("2d");
  var dataBP = {
      labels: ["Type", "Position"],
      datasets: [
          {
              label: "My First dataset",
              fillColor: "rgba(250,219,150,1)",
              strokeColor: "rgba(220,220,220,0.8)",
              highlightFill: "rgba(220,220,220,0.75)",
              highlightStroke: "rgba(220,220,220,1)",
              data: [fullStack, fullTime]
          },
          {
              label: "My Second dataset",
              fillColor: "rgba(151,187,205,1)",
              strokeColor: "rgba(151,187,205,0.8)",
              highlightFill: "rgba(151,187,205,0.75)",
              highlightStroke: "rgba(151,187,205,1)",
              data: [frontEnd, tempToPerm]
          },
          {
              label: "My First dataset",
              fillColor: "rgba(89,197,160,1)",
              strokeColor: "rgba(220,220,220,0.8)",
              highlightFill: "rgba(220,220,220,0.75)",
              highlightStroke: "rgba(220,220,220,1)",
              data: [backEnd, freelanceP]
          }
      ]
    };

    var myProgramBarChart = new Chart(ctxBP).Bar(dataBP);

  //data for program pie chart
    var outcomesProgramHelped = $('.program_stats').data('outcomesHelped');
    var outcomesProramNotHelped = $('.program_stats').data('outcomesNoHelp');

    var ctxPP = $("#myProgramPieChart").get(0).getContext("2d")
      var dataProgramPie = [
        {
            value: outcomesProgramHelped,
            color:"#AB1919",
            highlight: "#FF5A5E",
            label: "Red"
        },
        {
            value: outcomesProramNotHelped,
            color: "#46BFBD",
            highlight: "#5AD3D1",
            label: "Green"
        },
      ];

  var myProgramPieChart = new Chart(ctxPP).Pie(dataProgramPie)
  }
});
