<div id="meet-the-team">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="col-lg-3 col-md-4 mobile" >
					<div class="mobile">
						{{ include sectionlinks }}
					</div>
				</div>
				<div class="col-lg-9 col-md-8" >
					<h1>{{ page.page_title }}</h1>
					{{ page.body_text }}
					{{ each employee_category as ec sort by ec.sort_order }}
					<h3>{{ ec.employee_category }}</h3>
					<hr/>
					<div class="row">
						{{ each employees as employee where employee.employee_category = {ec.zid} sort by employee.employee_category}}
						{{ $index = {index} }}
						{{ if {$index} % (12/{page.number_of_cols}) == 1 && {$index} != 1 }}
					</div>
					<div class="row">
						{{ end-if }}
						<div class="col-md-{{ page.number_of_cols }} borderline">
							<img src="{{ employee.employee_photo.getImage(700,700,crop) }}" alt="{{ employee.employee_first_name}} {{ employee.employee_last_name }} photo">
							<h4>{{ employee.employee_first_name}} {{employee.employee_last_name}}</h4>
							<p>{{ employee.employee_bio }}</p>
						</div>
						{{ end-each }}
					</div>
					{{ end-each }}
				</div>
				<div class="col-lg-3 col-md-4" >
					<div class="desktop">
						{{ include sectionlinks }}
						{{ include inner-page-sidebar }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
