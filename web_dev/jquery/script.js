console.log("what's up");

$(document).ready(function(){
	$('div').click(function(){
		$(this).css("color", "black");
	});
});

$(document).ready(function(){
    $("div").click(function(){
        $("#no").hide();
    });
});
