	$(document).ready(function(){

	// Pulling cohort stats from the data attribute from html element id="officer_stats"
	var cohortStats = $('.officer_stats').data('stats');
	if(cohortStats){
		// Creatign an empty array to store cohort employment percentages
		var myCohortsEmployment = [];

		// Looping through cohort stats to push the employment rates
		// of ONLY the cohorts that graduated >= 90 days ago
		for(var i = 0; i < cohortStats.length; i++){
			if(cohortStats[i]['days_til_survey'] <= 10 ){
				myCohortsEmployment.push(cohortStats[i]['employed'])
			}
		}

		// Creates Pie Chart on officer's show page iff there is more than 1 cohort
		// that graduated >= 90 days ago
		if(myCohortsEmployment.length > 0){

			//Getting sum of all employment rates for use in finding the average
			var sum = 0;
			for(var i = 0; i < myCohortsEmployment.length; i++){
				sum += myCohortsEmployment[i];
			}

			// Getting average employment from
			avgEmployment = Math.floor(sum / myCohortsEmployment.length);

			//Establishing charts
			var $ctxP = $('#myPieChart').get(0).getContext('2d');
			var myNewChartP = new Chart($ctxP);

			// Employment pie chart data
			var pieData = [
			{
				value: avgEmployment,
				label: 'Employed',
				color: '#95bbcc'
			},
			{
				value: 100 - avgEmployment,
				label: 'Unemployed',
				color: '#fedd91'
			}
			]

			// Creating Pie Chart
			var myPieChart = new Chart($ctxP).Doughnut(pieData);
		}
	}
})
