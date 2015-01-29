function contactModal() {
	$('#contactModal').foundation('reveal', 'open');
};

function thanksModal() {
	$('#thanksModal').foundation('reveal', 'open');
};

$(function() {
	console.log("loaded");
	var hash = window.location.hash;

	if (hash == "#thanksModal") {
		thanksModal();
	}
	else if (hash == "#contactModal") {
		contactModal();
	};

});