/*global $*/

function init () {
	addCategory();
	sumItems(".expense-input", "#total-exp");
	sumItems(".income-input", "#total-inc");
	netCash();
}	

function addCategory() {
	sumItems(".expense-input", "#total-exp");
	netCash();

}



function sumItems(inputNum, outputNum) {
	var input = document.querySelectorAll(inputNum);
	var sum = 0;
	$(inputNum).on("change", function() {
		sum = 0;
		for(var i = 0; i < input.length; i++ ) {
			sum += Number(input[i].value);
		}

		$(outputNum).text(sum);		
	});

}

function netCash() {
	$('input').on("change", function() {
		var expenses = Number(document.querySelector("#total-exp").textContent);
		var income = Number(document.querySelector("#total-inc").textContent);
		var netCashTotal = income - expenses;
		$("#net-cash").text(netCashTotal);		
	});

}




$(document).ready(init);