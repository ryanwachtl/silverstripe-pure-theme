<!doctype html>
<html lang="en">
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> :: $SiteConfig.Title</title>
	$MetaTags(false)
	<meta name="author" content="$SiteConfig.Title"
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<% require css('//yui.yahooapis.com/pure/0.3.0/pure-min.css') %>
	<% require css('themes/pure/css/layout.css') %>
</head>
<body>

<div class="content">
	<div class="header">
		<div class="pure-menu pure-menu-open pure-menu-fixed pure-menu-horizontal">
			<a class="pure-menu-heading" href="home/">$SiteConfig.Title</a>
			<ul>
				<% loop Menu(1) %>
				<li class="<% if $LinkOrCurrent == 'current' %>pure-menu-selected<% end_if %>"><a href="$Link">$MenuTitle</a></li>
				<% end_loop %>
			</ul>
		</div>
	</div>

	<div class="splash">
		<div class="pure-g-r">
			<div class="pure-u-1-3">
				<div class="l-box splash-image">
					<img src="http://placehold.it/500x350"
						 alt="Placeholder image for example.">
				</div>
			</div>

			<div class="pure-u-2-3">
				<div class="l-box splash-text">
					<h1 class="splash-head">
						Some big bold text.
					</h1>

					<h2 class="splash-subhead">
						The HTML and CSS for this layout show how you can make a modern, responsive landing page for your next product. Browse through the source to see how we use menus and responsive grids to create this layout. Shrink your browser width and watch the layout transform and play nice with small screens.
					</h2>

					<p>
						<a href="#" class="pure-button primary-button">Get Started</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
		$Layout
	</div>

	<div class="footer">
		Learn more about Pure at http://purecss.io/
	</div>
</div>

</body>
</html>