	// Grabbing values from analytics controller
	var cohort = $('.cohort_statistics').data('cohort');
	// Grabbing array of student objects from analytics controller
	var students = $('.cohort_statistics').data('students');
	// Grabbing days 
	var daysGraduated = $('.cohort_statistics').data('days');

	var employmentStats = $('.cohort_statistics').data('grad');

	// Overall percentage of students currently employed
	var employedTotal = Math.floor((employmentStats.length / students.length) * 100)

	//Establishing charts
	var $ctxP = $('#myPieChart').get(0).getContext('2d');
	var myNewChartP = new Chart($ctxP);

	var $ctxL = $('#myLineChart').get(0).getContext('2d');
	var myNewChartL = new Chart($ctxL);

	// Employment pie chart data
	var pieData = [
	{
		value: employedTotal,
		label: 'Employed',
		color: '#f0553a'
	},
	{
		value: 100 - employedTotal,
		label: 'Unemployed',
		color: '#fedd91'
	}
	]


	if (daysGraduated > 90){
		var xValues = 9;
	} else {
		var xValues = Math.floor(daysGraduated/10);
	}

	// setting array of x-axis values 
	var xAxis = [0];
	for(var i = 1; i <= xValues; i++){
		xAxis.push(i*10);
	}

	// Filling studentEmployment array with 0's
	var studentEmployment = [];
	for(var i = 0; i <= xAxis.length; i++){
		studentEmployment.push(0);
	}

	// Filling studentEmployment array with percentage of employed students over time
	for(var i = 1; i <= xAxis.length; i++){
		for(var j = 0; j < employmentStats.length; j++){
			if(employmentStats[j] <= xAxis[i]){
				studentEmployment[i]++;
			}
		}
		studentEmployment[i] = Math.floor((studentEmployment[i] / students.length) * 100 );
	}

	var lineData = {
		labels: xAxis,
		datasets: [
			{
				label: "Employment over Time",
				fillColor: "#ffffff",
        strokeColor: "#f0553a",
        pointColor: "rgba(220,220,220,1)",
        pointStrokeColor: "#fff",
        pointHighlightFill: "#fff",
        pointHighlightStroke: "rgba(220,220,220,1)",
        data: studentEmployment
			}
		]
	}

	var optionsL = {
		scaleShowGridLines : false,
		datasetStrokeWidth : 5,
		datasetFill : false
	}


	// // Creating Pie Chart
	var myPieChart = new Chart($ctxP).Doughnut(pieData);
	var myLineChart = new Chart($ctxL).Line(lineData, optionsL);

	$(document).ready(function(){
		var percent = 0;
		timeoutID = window.setInterval(function(){
			if(percent <= employedTotal){
				$('.percent').text(percent + "%")
				percent++
			} else {
				clearInterval(timeoutID);
			}
		},10);
	})