<!-- Header -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
<div class="body-container">
	<div class="container no-padding">
		<div class="slick-slider-container" >
			<div id="slick-hero"  >
				{{ each homepage_slides as slide sort by slide.sort_order }}
				{{ if {slide.background_video} }}
				<div class=""  >

					<header  data-vide-bg="mp4: {{ slide.background_video.getMediaURL() }}{{if {slide.background_image} }}, poster: {{slide.background_image.getImage(2500)}}{{ end-if }}" data-vide-options=" loop: true, muted: true, position: 50% 50%">
						<div class="cr" >
							<div class="cc" >
								<div class="container">
									<div class="intro-text">
										<div class="intro-lead-in">{{slide.title}}</div>
										<div class="intro-heading">{{slide.second_line}}</div>
										{{ if {slide.button_text} }}
										<a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
										{{ end-if }}
									</div>
								</div>
							</div>
						</div>
					</header>
				</div>
				{{ else }}
				<div class=""  >

					<header style="background-image:url('{{slide.background_image.getImage(2500)}}')">
						<div class="cr" >
							<div class="cc" >
								<div class="container">
									<div class="intro-text">
										<div class="intro-lead-in">{{slide.title}}</div>
										<div class="intro-heading">{{slide.second_line}}</div>
										{{ if {slide.button_text} }}
										<a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
										{{ end-if }}
									</div>
								</div>
							</div>
						</div>
					</header>
				</div>
				{{ end-if }}
				{{ end-each }}

			</div>


			<div class="button-anchor"></div>




		</div>
		<script type="text/javascript">
			$(document).ready(function(){
				$('#slick-hero').slick({
					autoplay: true,
					autoplaySpeed: 6700,
					speed: 300,
					arrows: true,
					appendArrows: $('.button-anchor'),
					prevArrow:'<i class="fa fa-chevron-left" aria-hidden="true"></i>',
					nextArrow:'<i class="fa fa-chevron-right pull-right" style="margin-right: 30px;" aria-hidden="true"></i>',
					fade: false,
					infinite: true,
					slidesToShow: 1,
					adaptiveHeight: true,
					accessibility: true,
					dots: false,
					pauseOnHover: false,
					pauseOnFocus: false,
				});
			});
		</script>
		{{ include script-bg-vid }}

		<!-- Homepage Squares -->
		<section id="team" class="bg-light-gray" style="background-image:url({{ page.background_pattern.getImage() }})">
			<div class="padding20" style="padding:20px;">
				<div class="row">
					{{ each homepage_squares as square sort by square.sort_order }}
					<div class="col-md-4">
						<div class="text-center">
							<img src="{{ square.image.getImage(700,500,crop) }}">
							<h3>{{ square.image_title }}</h3>
							{{ if {square.button_text} }}
							<a class="btn btn-lg btn-primary" href="{{ truepath({square.links_to}) }}">{{ square.button_text }}</a>
							{{ end-if }}
						</div>
					</div>
					{{ end-each }}
				</div>
			</div>
		</section>


		<!-- Timeline Section -->
		{{ if {page.timeline_title} }}
		<section id="about">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="section-heading">{{page.timeline_title}}</h2>
						<h3 class="section-subheading text-muted">{{page.timeline_subtitle}}</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<ul class="timeline">
							{{each home_page_about_timeline as timeline}}

							<div class="row">
								{{if {index} % 2 = 0}}

								<div class="col-sm-8 mobile">
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h2>{{timeline.bubble_title}}</h2>
											<h4 class="subheading">{{timeline.bubble_subtitle}}</h4>
										</div>
										<div class="timeline-body">
											<p class="text-muted">{{timeline.bubble_blurb}}</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="timeline-image">
										<img class=" img-responsive" src="{{timeline.bubble_image.getImage(600,600,crop)}}" alt="{{timeline.title}} Image">
									</div>

								</div>
								<div class="col-sm-8 desktop">
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h2>{{timeline.bubble_title}}</h2>
											<h4 class="subheading">{{timeline.bubble_subtitle}}</h4>
										</div>
										<div class="timeline-body">
											<p class="text-muted">{{timeline.bubble_blurb}}</p>
										</div>
									</div>
								</div>
								{{else}}

								<div class="col-sm-8">
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h2>{{timeline.bubble_title}}</h2>
											<h4 class="subheading">{{timeline.bubble_subtitle}}</h4>
										</div>
										<div class="timeline-body">
											<p class="text-muted">{{timeline.bubble_blurb}}</p>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="timeline-image">
										<img class=" img-responsive" src="{{timeline.bubble_image.getImage(600,600,crop)}}" alt="{{timeline.title}} Image">
									</div>

								</div>
								{{end-if}}
							</div>
							(**<hr/>**)
							{{end-each}}

							<li class="timeline-inverted">
								<div class="timeline-image">
									{{ if {page.timeline_button_text} }}
									<h4><a href="{{ truepath({page.timeline_btn_links_to}) }}" >{{page.timeline_button_text}}</a></h4>
									{{ end-if }}
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		{{ end-if }}

		<!-- About Section -->
		{{ each about_section as abtsec sort by abtsec.sort_order }}
		{{ if {index} % 2 == 0 }}
		<section class="portfolio bg-light-gray">
			{{ else if {index} % 2 == 1 }}
			<section id="portfolio" class="bg-light-gray" style="background-image:url('{{ abtsec.about_section_image.getImage() }}');background-size:contain;backgound-position:left bottom;background-repeat:no-repeat;">
				{{ end-if }}
				<div class="">
					<div class="row">
						<div class="col-lg-6 pull-left home-section-two-img">
							&nbsp;
						</div>
						<div class="col-lg-6">
							<div class="row ">
								<div class="col-lg-12">
									<div class="opaque-bg">
										<div class="row">
											<div class="col-lg-12">
												<h2 class="section-heading pull-left home-section-two">{{abtsec.about_section_title}}</h2>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-12">
												<p class="pull-left home-section-two">{{ abtsec.about_section_copy }}</p>
												{{ if {abtsec.about_section_button_txt} }}
												<p><a class="btn btn-primary" href="{{ truepath({abtsec.about_section_btn_links_to}) }}" >{{ abtsec.about_section_button_txt }}</a></p>
												{{ end-if }}
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</section>
		{{ end-each }}
	</div>
</div>
