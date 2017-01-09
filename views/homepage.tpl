<!-- Header -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
<div class="slick-slider-container" >
    <div id="slick-hero"  >
        {{ each homepage_slides as slide sort by slide.sort_order }}
        {{ if {slide.background_video} }}
        <div class=""  >

            <header  data-vide-bg="mp4: {{ slide.background_video.getMediaURL() }}{{if {slide.background_image} }}, poster: {{slide.background_image.getImage(2500)}}{{ end-if }}" data-vide-options=" loop: true, muted: true, position: 50% 50%">
                <div class="container">
                    <div class="intro-text">
                        <div class="intro-lead-in">{{slide.title}}</div>
                        <div class="intro-heading">{{slide.second_line}}</div>
                        {{ if {slide.button_text} }}
                        <a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
                        {{ end-if }}
                    </div>
                </div>
            </header>
        </div>
        {{ else }}
        <div class=""  >

            <header style="background-image:url('{{slide.background_image.getImage(2500)}}')">
                <div class="container">
                    <div class="intro-text">
                        <div class="intro-lead-in">{{slide.title}}</div>
                        <div class="intro-heading">{{slide.second_line}}</div>
                        {{ if {slide.button_text} }}
                        <a href="{{ truepath({slide.links_to}) }}" class="page-scroll btn btn-xl">{{slide.button_text}}</a>
                        {{ end-if }}
                    </div>
                </div>
            </header>
        </div>
        {{ end-if }}
        {{ end-each }}
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function(){
        $('#slick-hero').slick({
            autoplay: true,
            arrows: false,
            fade: false,
            infinite: true,
            slidesToShow: 1,
            adaptiveHeight: true,
            speed: 300,
            dots: true,
            autoplaySpeed: 6700,
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
                <div class="square-wrap">
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
                    {{if {index} % 2 = 0}}
                    <li class="timeline-inverted">
                        {{else}}
                        <li>
                            {{end-if}}
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="{{timeline.bubble_image.getImage(400,400,crop)}}" alt="{{timeline.title}} Image">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>{{timeline.bubble_title}}</h4>
                                    <h4 class="subheading">{{timeline.bubble_subtitle}}</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">{{timeline.bubble_blurb}}</p>
                                </div>
                            </div>
                    </li>
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

<!-- About Section -->
<section id="portfolio" class="bg-light-gray" style="background-image:url('{{ page.about_section_image.getImage() }}');background-size:contain;backgound-position:left bottom;background-repeat:no-repeat;">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 pull-left home-section-two-img">
				&nbsp;
			</div>
			<div class="col-lg-6">
				<div class="opaque-bg">
					<div class="row">
						<h2 class="section-heading pull-left home-section-two">{{page.about_section_title}}</h2>
					</div>
					<div class="row">
						<p class="pull-left home-section-two">{{ page.about_section_copy }}</p>
						{{ if {page.about_section_button_txt} }}
						<p><a class="btn btn-primary" href="{{ truepath({page.about_section_btn_links_to}) }}" >{{ page.about_section_button_txt }}</a></p>
						{{ end-if }}
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
