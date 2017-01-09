<div id="meet-the-team">
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
					{{ page.body_text }}
					{{ each employee_category as ec sort by ec.sort_order }}
					<h3>{{ ec.employee_category }}</h3>
					<hr/>
					<div class="row">
						{{ each employees as employee where employee.employee_category = {ec.zid} sort by employee.employee_category}}
						{{ if {index}  % 3 == 1 && {index} != 1 }}
					</div>
					<div class="row">
						{{ end-if }}
						<div class="col-md-4 borderline">
							<img src="{{ employee.employee_photo.getImage(700,700,crop) }}" alt="{{ employee.employee_first_name}} {{ employee.employee_last_name }} photo">
							<h4>{{ employee.employee_first_name}} {{employee.employee_last_name}}</h4>
							<p>{{ employee.employee_bio }}</p>
						</div>
						{{ end-each }}
					</div>
					{{ end-each }}
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
