function contactModal() {
	$('#contactModal').foundation('reveal', 'open');
};

function thanksModal() {
	$('#thanksModal').foundation('reveal', 'open');
};


$(function() {
	var params = window.location.search;

	if (params == "?thanksModal=true") {
		thanksModal();
	}

});