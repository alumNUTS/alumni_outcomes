// window pop-up thanking for survey completion
$(document).ready(function(){
	$(".notice_survey").on("click", function(){
		$(".notice").hide()
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
