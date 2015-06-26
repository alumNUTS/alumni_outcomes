	$(document).ready(function(){
	
	var cohortStats = $('.officer_stats').data('stats');	

	myCohortsEmployment = [];

	for(var i = 0; i < cohortStats.length; i++){
		if(cohortStats[i]['days_til_survey'] <= 10 ){
			myCohortsEmployment.push(cohortStats[i]['employed'])
		}
	}

	if(myCohortsEmployment.length > 0){

		var sum = 0;
		for(var i = 0; i < myCohortsEmployment.length; i++){
			sum += myCohortsEmployment[i];
		}

		avgEmployment = Math.floor(sum / myCohortsEmployment.length);

		//Establishing charts
		var $ctxP = $('#myPieChart').get(0).getContext('2d');
		var myNewChartP = new Chart($ctxP);

		// Employment pie chart data
		var pieData = [
		{
			value: avgEmployment,
			label: 'Employed',
			color: '#f0553a'
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
})