<div id="breeder-questions">
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
						{{ each breeder_q as question sort by question.sort_order }}
						<div class="row">
							<div class="col-md-12">
								<p>{{ question.question }}</p>
								<p>{{ question.answer }}</p>
								<hr/>
							</div>
						</div>
						{{end-each }}
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
