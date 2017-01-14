<div id="resources">
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
					<div class="title-border">
						<img class="main-image" src="{{ page.main_image.getImage(800,400,crop) }}" />
					</div>
					{{ page.body_text }}
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
