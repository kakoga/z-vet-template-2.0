<div id="patient-forms">
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
						<h3>{{ page.body_text }}</h3>
					</div>
					<p class="form-rows">{{ page.download_form_note}}</p>

							<br/>
					{{ if {page.zid} == {patient_forms.first().zid} }}
					{{ each online_forms as of sort by of.sort_order }}
					<blockquote>
						<div class="form-rows">
							<h4>{{ of.form_title }}</h4>
							{{ of.form_description }}
							<a href="{{ of.form_pdf.getMediaUrl() }}" target="blank"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> Download Form</a>
						</div>
						<br/>
						<br/>
					</blockquote>
					{{ end-each }}
					{{ end-if }}
					{{ if {page.default_fields} != 'no_form' }}
					<hr>
					<div class="row">
						<div class="col-md-12">
							<p class="large">{{ page.embedded_form_instrux }}</p>
						</div>
					</div>
					<form class="form-group" method="post" data-toggle="validator" role="form">
						<input type="hidden" name="zlf" value="{{ page.page_title }} Form" />
						<input type="hidden" name="zcf" value="1" />
						{{ if {page.send_form_to} }}
						<input type="hidden" name="email_override" value="{{ page.send_form_to }}" />
						{{ end-if }}

						<h6 class="form-rows">Owner Information</h6>
						<div class="row" >
							<div class="form-group col-sm-6">
								<label for="firstname">First Name</label>
								<input type="text" name="first_name" class="form-control required" id="firstname" placeholder="Jane" required>
							</div>
							<div class="form-group col-sm-6">
								<label for="lastname">Last Name</label>
								<input type="text" name="last_name" class="form-control required" id="lastname" placeholder="Doe" required>
							</div>
							<div class="form-group col-sm-6">
								<label for="email">Email</label>
								<input type="email" name="email" class="form-control" id="email" placeholder="jane.doe@example.com" required>
							</div>
							<div class="form-group col-sm-6">
								<label for="phone">Phone</label>
								<input type="tel" name="phone" class="form-control required" id="phone" placeholder="888.555.5555" >
							</div>
							{{ if {page.default_fields} == 'patient_address' }}
							<div class="form-group col-xs-12">
								<label for="streetaddress">Street Address</label>
								<input type="text" name="streetaddress" class="form-control required" id="streetaddress" placeholder="Street Address" required>
							</div>
							<div class="form-group col-sm-4">
								<label for="city">City</label>
								<input type="text" name="city" class="form-control required" id="city" placeholder="City" required>
							</div>
							<div class="form-group col-sm-4">
								<label for="state">State</label>
								<input type="text" name="state" class="form-control required" id="state" placeholder="State" required>
							</div>
							<div class="form-group col-sm-4">
								<label for="zipcode">Zip Code</label>
								<input type="text" name="zipcode" class="form-control required" id="zipcode" placeholder="Zip Code" required>
							</div>
							<div class="clear-fix"></div>
							{{ else if {page.default_fields} == 'patient_address_and_pet_info' }}
							<div class="form-group col-xs-12">
								<label for="streetaddress">Street Address</label>
								<input type="text" name="streetaddress" class="form-control required" id="streetaddress" placeholder="Street Address">
							</div>
							<div class="form-group col-xs-4">
								<label for="city">City</label>
								<input type="text" name="city" class="form-control required" id="city" placeholder="City">
							</div>
							<div class="form-group col-xs-4">
								<label for="state">State</label>
								<input type="text" name="state" class="form-control required" id="city" placeholder="State">
							</div>
							<div class="form-group col-xs-4">
								<label for="zipcode">Zip Code</label>
								<input type="text" name="zipcode" class="form-control required" id="ezipcode" placeholder="Zip Code">
							</div>
							<div class="clear-fix"></div>
							<!-- Pet Info -->
							<h6 class="form-rows">Pet Information</h6>
							<div class="form-group col-xs-4">
								<label for="petname"> Pet's Name</label>
								<input type="text" name="petname"  class="form-control required" id="petname" placeholder="Spot">
							</div>
							<div class="form-group col-xs-4">
								<label for="petsspecies">Pet's Species</label>
								<select class="form-control required" id="petspecies">
									<option>Dog</option>
									<option>Cat</option>
									<option>Small Animal: rat, hamster, guinea pig</option>
									<option>Herptiles: turtle, snake</option>
								</select>
							</div>
							<div class="form-group col-xs-2">
								<label for="petssex">Pet's Sex</label>
								<select class="form-control required" name="petssex" id="petssex">
									<option>Male</option>
									<option>Female</option>
								</select>
							</div>
							<div class="form-group col-xs-2">
								<label for="spayneuter">Select One:</label>
								<select class="form-control required" name="spayneuter" id="spayneuter">
									<option>Neutered</option>
									<option>Spayed</option>
									<option>N/A</option>
								</select>
							</div>

							{{ end-if }}


							<div class="form-group col-xs-12">
								{{ each custom_form_fields as form where find_in_set(form.zid, '{page.additional_fields}') sort by form.sort_order }}
								<!-- name/text/toggle -->
								{{ if {form.field_type_toggle} == 0 }}
								<div class="form-group">
									<label for="id{{form.zid}}">{{ form.custom_field_name }}</label>
									<input name="{{ form.custom_form_name }}" type="text" class="form-control" id="id{{form.zid}}" />
								</div>
								{{ else }}
								<div class="form-group">
									<label for="id{{form.zid}}">{{ form.custom_field_name }}</label>
									<textarea name="{{ form.custom_form_name }}" class="form-control" id="id{{form.zid}}" rows="3"></textarea>
								</div>
								{{ end-if }}
								{{ end-each }}

								<button type="submit" class="btn btn-primary">Submit</button>
							</div>

						</div>
					</form>
					{{ end-if }}
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
