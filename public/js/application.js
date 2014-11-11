$(document).ready(function() {

	console.log("fun stuff")
	
	$(".create_contact").on("click", function(event) {
		event.preventDefault();
		$(".contact_form").show();
	});



	$(".contact_form form").submit(function(event){
		event.preventDefault();
		var $this = $(this)
		$.ajax({
			type: "POST",
			url: "/contacts",
			data: $this.serialize(),
			dataType: "json"
		}).done(function(response){
			console.log(response);
			$("ul").append("<li><a href='/contacts/"+ response.id + "'>" + response.name + "</a></li>")
		})
	});

// This is going to be the replies form ajax call.
	$(".post_comment form").on('submit', function(event){
		event.preventDefault();
		console.log("helloooooo?")
		var $this = $(this)
		$.ajax({
			type: "POST",
			url: $this.attr("action"),
			data: $this.serialize(),
			dataType: "json"
		}).done(function(response){
			console.log(response);
			($this.parent().find('.comment')).append(response.user_name + ":" + " " + response.reaction + "<br>")
			$("textarea[name='reply[reaction]']").val("");
		})
	});


	$(".post_example form").on('submit', function(event){
		console.log('hello')
		event.preventDefault();
		$(".post_example form").unbind('submit');
		var $this = $(this)
		// $(".post_example form input[type='submit']").attr('disable', 'true');
		// $target = $(event.target)
		// alert("Let's Make Sure This Works!");
		$.ajax({
			type: "POST",
			url: $this.attr("action"),
			data: $this.serialize()
		}).done(function(response){
			$(".new_comment").append(response);
			$("input[name='comment[photo]']").val("");
			$("textarea[name='comment[description]']").val("");
		})
	});

console.log( 'script loaded' );
	
});

//Ask Myles about this.  Looks like document ready is reloading the bindings.  How can we write this so we don't have to unbind it.



