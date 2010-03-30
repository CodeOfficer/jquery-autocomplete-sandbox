;(function($) {
	$(function() {

		function log(message) {
			$("<li></li>").text(message).appendTo("#output");
			$("#log").attr("scrollTop", 0);
		}
		
		$("#posts").autocomplete({
			// TODO doesn't work when loaded from /demos/#autocomplete|remote
			source: "posts",
			minLength: 2,
			select: function(event, ui) {
				if (ui.item) {
					console.log(event, ui, ui.item.label, ui.item.value);
					log("Selected: " + ui.item.title + " aka " + ui.item.id);
				} else {
					console.log("nothing found");
					log("Nothing selected, input was " + this.title);					
				};
			}
		});


	});
})(jQuery);
