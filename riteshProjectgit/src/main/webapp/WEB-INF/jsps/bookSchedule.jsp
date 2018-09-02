<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<link href="bookSchedule/css/style.css" rel="stylesheet" type="text/css">
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">

<title>jQuery Multi-Step Form Example</title>
<style>
</style>
</head>
<body>

	<input type="hidden" name="" id="url" value="${url}" />
	<input type="hidden" id="std" value="${param.std}" />
	
	<!-- multistep form -->
	<form id="msform" action="/formData" method="get">
		<input type="hidden" id="location" name="location"
			value="${param.location}" />
		<!-- progressbar -->
		<ul id="progressbar">
			<li class="active">Account Setup</li>
			<li>Social Profiles</li>
			<li>Personal Details</li>
		</ul>
		<!-- fieldsets -->
		<fieldset>
			<h2 class="fs-title" id="found">Your personal detail</h2>

			<span class="fs-subtitle">Selected Class</span>
			<div class="selectClass">

				<select name="std" id="stdValue">
					<option value="#" selected>--Selected Class--</option>
					<option value="500">Class-1</option>
					<option value="501">Class-2</option>
					<option value="502">Class-3</option>
					<option value="503">Class-4</option>
					<option value="504">Class-5</option>
					<option value="505">Class-6</option>
					<option value="">Class-7</option>
					<option value="">Class-8</option>
					<option value="">Class-9</option>
					<option value="">Class-10</option>
					<option value="">Class-11</option>
					<option value="">Class-12</option>
				</select>
			</div>
			<!-- 
			<div class="selectSubject">
				<select>
					<option>--Select Subject--</option>
					<option value="200">English</option>
					<option value="200">Physics</option>
					<option value="200">Chemistry</option>
				</select>
			</div>
			 

			<div id="displaySubjects">
				<input type="text" name="#" id="name"
					style="text-transform: initial" placeholder="Search Subjects...." />
				
			</div>
			-->
			<span class="fs-subtitle">Selected Subject</span>
			<ul id="listSubjects">
				<!-- items generated dynamically -->

			</ul>

			<input type="button" name="next" class="next action-button"
				value="Next" />
		</fieldset>
		<fieldset>
			<h2 class="fs-title">Profiles</h2>
			<h3 class="fs-subtitle">Your presence on the social network</h3>
			<textarea name="address" placeholder="Address"></textarea>
			<input type="text" name="landmark"
				placeholder="Enter your Landmark (Optional)" /> <input
				type="button" name="previous" class="previous action-button"
				value="Previous" /> <input type="button" name="next"
				class="next action-button" value="Next" />
		</fieldset>
		<fieldset>
			<h2 class="fs-title">Schedule Details</h2>
			<h3 class="fs-subtitle">We will Schedulue free Demo</h3>

			<div id="calendar" class="form">
				<input type="text" name="date" id="datePick" />
			</div>
			<br> <input type="button" name="previous"
				class="previous action-button" value="Previous" /> <input
				type="submit" name="submit" class="action-button" value="Submit" />
		</fieldset>

	</form>

	<!-- jQuery -->
	<script type="text/javascript" src="index/js/js/jquery.1.11.1.js"></script>
	<!-- jQuery easing plugin -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {

			//jQuery time
			var current_fs, next_fs, previous_fs; //fieldsets
			var left, opacity, scale; //fieldset properties which we will animate
			var animating; //flag to prevent quick multi-click glitches

			$(".next").click(
					function() {
						if (animating)
							return false;
						animating = true;

						current_fs = $(this).parent();
						next_fs = $(this).parent().next();

						//activate next step on progressbar using the index of next_fs
						$("#progressbar li").eq($("fieldset").index(next_fs))
								.addClass("active");

						//show the next fieldset
						next_fs.show();
						//hide the current fieldset with style
						current_fs.animate({
							opacity : 0
						}, {
							step : function(now, mx) {
								//as the opacity of current_fs reduces to 0 - stored in "now"
								//1. scale current_fs down to 80%
								scale = 1 - (1 - now) * 0.2;
								//2. bring next_fs from the right(50%)
								left = (now * 50) + "%";
								//3. increase opacity of next_fs to 1 as it moves in
								opacity = 1 - now;
								current_fs.css({
									'transform' : 'scale(' + scale + ')'
								});
								next_fs.css({
									'left' : left,
									'opacity' : opacity
								});
							},
							duration : 800,
							complete : function() {
								current_fs.hide();
								animating = false;
							},
							//this comes from the custom easing plugin
							easing : 'easeInOutBack'
						});
					});

			$(".previous").click(
					function() {
						if (animating)
							return false;
						animating = true;

						current_fs = $(this).parent();
						previous_fs = $(this).parent().prev();

						//de-activate current step on progressbar
						$("#progressbar li")
								.eq($("fieldset").index(current_fs))
								.removeClass("active");

						//show the previous fieldset
						previous_fs.show();
						//hide the current fieldset with style
						current_fs.animate({
							opacity : 0
						}, {
							step : function(now, mx) {
								//as the opacity of current_fs reduces to 0 - stored in "now"
								//1. scale previous_fs from 80% to 100%
								scale = 0.8 + (1 - now) * 0.2;
								//2. take current_fs to the right(50%) - from 0%
								left = ((1 - now) * 50) + "%";
								//3. increase opacity of previous_fs to 1 as it moves in
								opacity = 1 - now;
								current_fs.css({
									'left' : left
								});
								previous_fs.css({
									'transform' : 'scale(' + scale + ')',
									'opacity' : opacity
								});
							},
							duration : 800,
							complete : function() {
								current_fs.hide();
								animating = false;
							},
							//this comes from the custom easing plugin
							easing : 'easeInOutBack'
						});
					});

			$(".submit").click(function() {
				return false;
			})

		});
	</script>
	<%-- javascript file created by ritesh--------- --%>
	<script src="bookSchedule/js/main.js" type="text/javascript"></script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</body>
</html>