<doctype HTML>
<head>
	<! -- 1140px Grid -->
	<link rel="stylesheet" type="text/css" href="/static/css/1140/1140.css" media="screen" />
	<!--[if lte IE 9]><link rel="stylesheet" href="/static/css/1140/ie.css" type="text/css" media="screen" /><![endif]-->

	<link rel="stylesheet" type="text/css" href="/static/css/mou/clearness_dark.css" />
	<link rel="stylesheet" type="text/css" href="/static/css/mou/github.css" />
	<link rel="stylesheet" type="text/css" href="/static/css/mou/clearness.css" />
	
	<!-- My stylesheets -->
	<link rel="stylesheet" type="text/css" href="/static/css/index.css" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div id="header" class="twelvecol last">
				<a href="/"><h1> Peter Downs </h1></a>
				<p> Student / Hacker / Human </p>
			</div>
		</div>

		<div class="row">
			<div id="sidebar" class="fourcol">
				<div id="sidebar-inner" class="shadow">
					<h3 style="text-align: center; text-decoration: underline;"> About </h3>
					<p> I'm <b>Peter Downs</b>. I'm a highschool (going on university) student in the US.
					I like to read, run, and program. This blog is my experiment with writing. </p>
				
					<h3 style="text-align: center; text-decoration: underline;"> Contact </h3>
					<p>&mdash; peter.l.downs@gmail.com</p>
					<p>&mdash; <a href="https://twitter.com/peterldowns">@peterldowns </a></p>
					<p>&mdash; <a href="https://github.com/peterldowns"> Github </a></p>
					<p>&mdash; <a href="http://stackoverflow.com/users/829926/peter-downs"> Stack Overflow </a></p>
					<p>&mdash; <a href="https://facebook.com/peter.downs"> Facebook </a></p>
				</div>
			</div>

			<div id="content" class="eightcol last">
				<div id="content-inner" class="shadow">
				%if view == "archive":
					<div class="archives" style="text-align: center;">
						<h1> All Posts </h1>
					%for post in posts:
						<a href="{{post['url']}}"> {{post['title']}} </a>
					%end
					</div>
				</div>
		
				%elif view == "post":
					<div class="post"><!--
						<div class="info">
						%if post['timestamp']:
							<p style="font-weight: 1000000; text-decoration: underline; text-align: center;">{{post['timestamp']}}</p>
						%end
						</div>-->
						{{!post['html']}}
					</div>
				%end
				</div>
			</div>
		</div>
	</div>
</body>
</doctype>
