<div id="services">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="mobile">
					<div class="col-md-3" >
						{{ include sectionlinks }}
					</div>
				</div>
				<div class="col-md-9" >
					<div class="title-border">
						<h1>{{ page.page_title }}</h1>
					</div>
					<div class="body-text" >
						{{ page.body_text }}
					</div>
					<div class="service-grid desktop">
						<div class="padding20">
							<div class="row">
								{{ each vet_services as ser sort by ser.sort_order }}
								{{ if {index}  % 3 == 1 && {index} != 1 }}
							</div>
							<div class="row">
								{{ end-if }}
								<div class="col-md-4">
									<div class="square-wrap">
										<img src="{{ ser.main_image.getImage(700,700,crop) }}">
										<h4>{{ ser.page_title.striptags() }}</h4>
										<a class="btn btn-lg btn-primary" href="{{ ser.getUrl() }}">Learn More</a>
									</div>
								</div>
								{{ end-each }}
							</div>
						</div>
					</div>
				</div>
				<div class="desktop">
					<div class="col-md-3" >
						{{ include sectionlinks }}
						{{ include inner-page-sidebar }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
