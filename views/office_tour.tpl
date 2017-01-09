<div id="office-tour">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="row body-content">
			<div class="mobile">
				<div class="col-md-3" >
					{{ include sectionlinks }}
				</div>
			</div>
			<div class="col-md-9" >
				<h1>{{ page.page_title }}</h1>
				<div class="body-text" >
					{{ page.body_text }}
				</div>
				<div class="">
					{{ if {page.youtube_id} }}
					<iframe id="ytplayer" type="text/html" width="100%" src="https://www.youtube.com/embed/{{ page.youtube_id }}?rel=0" frameborder="0"></iframe>
					{{ end-if }}
				</div>
				<hr>
				<div class="row">
					{{ each office_photos as photo sort by photo.sort_order }}
					{{ if {index} % 3 == 1 && $count != 1 }}
				</div>
				<div class="row">
					{{ end-if }}
					<div class="col-md-4">
						<a class="magnific" href="{{photo.office_photo.getImage()}}" title="{{ photo.photo_title }}" itemprop="name url">
							<img src ="{{ photo.office_photo.getImage(600,400,crop) }}" alt="{{picture.title}} photo">
						</a>
						<p class="large">{{ photo.photo_title }}</p>
						{{ photo.photo_description }}
					</div>
					{{ end-each }}
				</div>
			</div>
			<div class="desktop">
				<div class="col-md-3" >
					{{ include sectionlinks }}
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
