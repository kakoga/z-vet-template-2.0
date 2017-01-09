
<!-- Generic Page View -->
<section id="portfolio" class="bg-light-gray">
    <div class="container">
	    <div class="row">
                <div class="col-lg-12 text-center">
					<h2 class="section-heading">{{page.title}}</h2>
					<h3 class="section-subheading text-muted">{{page.content}}</h3>
                </div>
            </div>
	    <div class="row">
		    
			{{each social_feed as social order by order by z.sort}}
			
			{{include social-loop}}
			
			{{end-each}}
        </div>
	    
    </div>
</section>
