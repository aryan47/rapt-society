var count = 0;
var urlHost = $('#url').val();
var subjects;
$(function() {
	$("#datePick").datepicker({
		dateFormat : "dd-mm-yy",
		minDate : 0,
		maxDate : "+2M"
	}).datepicker('setDate','today'+1);
});
$(function() {
	var locId = $('#location').val();
	var stdId = $('#std').val();
	
	$("#stdValue").val(stdId);
//	var urlLoc = location.origin+"/locations/" + locId +"/instructors";
	alert(urlLoc);

	$
			.getJSON(urlLoc)
			.done(
					function(data) {
						console.log(data);
						var countInstructor = data._embedded.instructors.length;

						$("#found")
								.text(
										countInstructor
												+ " instructor found in your selected location");
						console.log("inside book shed instruco found");
					}).fail(function() {
			});
});

$(function() {
	var url = location.origin+"/subjects";
	var suggName = [];
	var details;
	
//	alert(location.origin);
//	alert(location.host);
//	alert(location.pathname);
	$.getJSON(url).done(function(data) {
		details = (data._embedded.subjects);

	}).fail(function(e) {
		alert("subjects ajax "+e);
	}).always(function() {
		$(details).each(function(index,value) {
			suggName.push(details[index].name);
		});
//		$('#name').autocomplete({
//			source: suggName
//		});
		fillListSubjects(suggName);
	});
	
});
//<ul id="listSubjects">
//<li>                      
//<span id="subjectName">Physics</span>
// <div id="subjectSelect">
//      <input type="checkbox" name="subjectSelect" id="">
// </div>
//</li>
//<ul>

$(function(){
	$('#listSubjects').on('click','li',function(){
		$(this).find('input:checkbox').trigger('click');
	});
});
function fillListSubjects(suggName){
	$(suggName).each(function(index,value){
		$('#listSubjects').append("<li><label for='sub' id='subjectName'>"+suggName[index] +"</label><div id='subjectSelect'><input type='checkbox' name='sub' id='sub' value='"+suggName[index]+"'></div></li>");
	});
	
}

//validation
$(function() {

	$("input:text, textarea, input[type=tel]").on("blur", function() {

		if ($(this).attr("name") != "landmark") {
			if ($(this).val() == null || $(this).val() == "") {
				
					$(this).css("border", "1px solid red");
			}
			else{
				$(this).css("border", "");
			}
		}
	});	
});
$(function(){
	$("#msform").submit(function(event){	
		var pin= $("#pin").val().trim();
		var address= $("#address").val().trim();
		var phoneNo= $("#phoneNo").val().trim();
		
		if(pin.length==0 || address.length==0 || phoneNo.length==0){
			alert("Please fill in all the details.");
			event.preventDefault();
		}
		
	});
});

/*
 * $("#name").keyup( function() { console.clear(); sugg.empty();
 * sugg.addClass("open"); var inputVal = $('#name').val(); if
 * (!inputVal.includes(',')) { autoFill(subjects, sugg, inputVal.trim()); } else {
 * autoFillClear(); var split = inputVal.split(",");
 * 
 * var commaVal = split.pop(); console.log(commaVal + "value contains , " +
 * inputVal.includes(',')); autoFill(subjects, sugg, commaVal.trim()); }
 * 
 * });
 * 
 * $(function() { $('#displaySubjectsList').on("click", "div", function() {
 * 
 * var inputText = $("#name").val(); var ans; if (!inputText.includes(",")) {
 * $("#name").val($(this).text()); } else if (inputText.includes(",")) { var x =
 * inputText.split(",");
 * 
 * ans = x[0]; console.log("value " + x); for (i = 1; i < (x.length - 1); i++) {
 * ans += ", " + x[i]; //we can use x.join(",") } console.log(ans +
 * "appending"); ans += ", " + $(this).text(); $("#name").val(ans); }
 * 
 * autoFillClear(); $("#name").focus(); });
 * 
 * $('form').keydown(function(event) { if (event.keyCode == 13) {
 * $("#displaySubjectsList div").trigger('click');
 * 
 * event.preventDefault(); }
 * 
 * }); s $('#name').keyup( function(event) { if (count > $("#displaySubjectsList
 * div").length) { count = 0; }
 * 
 * if (event.which == 40) {
 * 
 * $("#displaySubjectsList").find("div").eq(count).prev()
 * .css("background-color", "");
 * $("#displaySubjectsList").find("div").eq(count).css( "background-color",
 * "#ccc"); count++; } if (event.which == 38) {
 * 
 * $("#displaySubjectsList").find("div").eq(count).next()
 * .css("background-color", "");
 * $("#displaySubjectsList").find("div").eq(count).css( "background-color",
 * "#ccc"); count--; } if (event.which == 13) {
 * 
 * autoFillClear(); } });
 * 
 * });
 * 
 * function autoFill(subjects, sugg, inputVal) { $.each(subjects,
 * function(index, value) { suggName = (value.name)
 * 
 * console.log("inside autofill " + suggName + " and uppercase" +
 * suggName.toUpperCase()); if ((suggName).includes(inputVal.toUpperCase()) &&
 * inputVal != "") { sugg.append("<div>" + suggName + "</div>"); } }); }
 * function autoFillClear() { $("#displaySubjectsList").empty();
 * $("#displaySubjectsList").removeClass("open"); console.log("executed"); }
 */