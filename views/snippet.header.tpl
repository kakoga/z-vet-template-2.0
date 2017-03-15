

<!-- Navigation -->
<div id="nav-wrap">
	<nav id="mainNav" class="navbar navbar-default navbar-custom {{if {page.path_part} != 'zesty_home'}}{{end-if}}">
		<div class="">
			<div class="">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="row" >
					<div class="col-sm-4 col-xs-6" >
						<ul class="list-inline header-social">
							{{each social_links as social}}
							<li class="social-{{social.font_awesome_icon}}">
								<a style="font-size: {{ clippings.social_media_icon_height }}px;" href="{{social.url}}"><i class="fa fa-{{social.font_awesome_icon}}"></i></a>
							</li>
							{{end-each}}
						</ul>
					</div>
					<div class="col-sm-4 col-xs-6" >
						<div class="number text-center" >
							<h3 style="font-size: {{ clippings.telephone_number_height }}px;"><a href="tel:{{ clippings.phone }}" ><span class="fa fa-phone"></span> {{ clippings.phone }}</a></h3>

						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<!-- /.navbar-collapse -->
					</div>
					<div class="col-sm-4" >
						<a class="btn btn-primary pull-right" style="font-size: {{ clippings.request_btn_font_size }}px;" id="request" href="https://dashboard.petdesk.com/WebApptRequest/?referralCode={{ clippings.petdesk_ref_code }}"  >Request Appointment</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<div class="body-">
		<div id="nav-box" class="navbar navbar-default navbar-custom ">

			<div class="container no-padding">
				<div class="row">
					<div class="col-sm-12">
						{{if {clippings.logo} }}
						<a class="navbar-brand brand-image" href="/">
							<img src="{{clippings.logo.getImage()}}" style="height: {{ clippings.logo_height }}px;" alt="{{clippings.site_name}} logo"/>
							{{ if {clippings.below_logo_text} }}
							<span class="below-logo hidden-sm-down" >{{ clippings.below_logo_text }}</span>
							{{ end-if }}
						</a>
						{{ else }}
						<a class="navbar-brand site-name" href="/">{{clippings.site_name}}</a>
						{{end-if}}
					</div>
				</div>
				<div class="nav-bar" >
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
					</button>
					<div class="container" >

						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<div class="mobile">
								{{bootstrap.navigation(nav navbar-nav,1)}}
							</div>
							<div class="desktop">
								{{bootstrap.navigation(nav navbar-nav,2)}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	//$('.dropdown-toggle').attr('data-toggle','dropdown');
</script>
