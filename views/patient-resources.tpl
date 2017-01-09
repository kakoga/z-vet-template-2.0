<div id="resources">
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
					<h1>{{ page.page_title }}</h1>
					<hr>
					{{ page.body_text }}
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
