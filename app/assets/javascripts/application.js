// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require rails-ujs
//= require_tree .

$( document ).ready(function() {
   uncheckAll();
   checkAll();
   ensureChecked();
});

function uncheckAll() {
	$("#uncheck-button").on('click', () => {
		$.each($(".misc-restriction-checkbox"), function(checkbox) {
			$(this).prop('checked', false);
		});
	});
};

function checkAll() {
	$("#check-button").on('click', () => {
		$.each($(".misc-restriction-checkbox"), function(checkbox) {
			$(this).prop('checked', true);
		});
	});
};