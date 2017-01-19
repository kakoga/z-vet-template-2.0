<div id="our-photos">
	<div class="body-container">
		<div class="container">
			<div class="body-content" >
				<h1>{{ page.page_title }}</h1>
				<div class="row">
					<div class="mobile">
						<div class="col-md-4" >
							{{ include sectionlinks }}
						</div>
					</div>
					<div class="col-md-8" >
						{{ if {page.main_image} }}
						<div class="title-border">
								<img class="main-image" src="{{ page.main_image.getImage(800,400,crop) }}" />
							</div>
						{{ end-if }}
						<div class="body-text" >
							{{ page.body_text }}
						</div>
						<div class="row">
							{{ each about_us_photos as picture sort by picture.sort_order }}
							{{ if {index} % 3 == 1 && $count != 1 }}
						</div>
						<div class="row">
							{{ end-if }}
							<div class="col-md-4">
								<a class="magnific" href="{{picture.about_us_photo.getImage()}}" title="{{ picture.photo_title }}" itemprop="name url">
									<img src ="{{ picture.about_us_photo.getImage(600,400,crop) }}" alt="{{picture.title}} photo">
								</a>
								<p class="large">{{ picture.photo_title }}</p>
								<p>{{ picture.photo_description }}</p>
							</div>
							{{ end-each }}
						</div>
					</div>
					<div class="desktop">
						<div class="col-md-4" >
							{{ include sectionlinks }}
							{{ include inner-page-sidebar }}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(function() {
		$('.magnific').magnificPopup({
			type:'image',
			gallery: {
				enabled: true
			}
		});
	});
</script>
