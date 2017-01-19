<div id="services">
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
						<div class="service-grid desktop">
							<div class="padding20">
								<div class="row">
									{{ each vet_services as ser sort by ser.sort_order }}
									{{ if {index}  % 3 == 1 && {index} != 1 }}
								</div>
								<div class="row">
									{{ end-if }}
								</div>
							</div>
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
