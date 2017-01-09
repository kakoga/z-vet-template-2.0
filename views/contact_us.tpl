<div id="contact-us">
	{{ include inner-page-hero }}
	<div class="container">
		<div class="body-content" >
			<div class="row">
				<div class="col-md-12">
					<h1>{{ page.page_title }}</h1>
				</div>
				<div class="col-md-4" >
					<p>{{ page.address_one }}</p>
					<p>{{ page.address_two }}</p>
					<p>{{ page.address_three }}</p>
					<p>{{ page.general_info_one }}</p>
					<p>{{ page.phone_number_one }}</p>
					<p>{{ page.general_info_two }}</p>
					<p>{{ page.phone_number_two }}</p>
					<h4>{{ page.hours_title }}</h4>
					{{ each hours_of_operation as hours sort by hours.sort_order }}
					<p><span class="days">{{ hours.day_of_week}}</span> {{ if {hours.open} }}<span class="pull-right">{{hours.open}}am - {{ hours.close}}pm</span>{{ else }}<span class="pull-right">Closed</span>{{ end-if }}</p>
					{{ end-each }}
				</div>
				<div class="col-md-8">
					{{ page.google_map_embed }}
				</div>
			</div>
		</div>
	</div>
</div>
