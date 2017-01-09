
<!-- Product Page View -->
<section>
    <div class="container">
	   
		<div class="product" itemscope="" itemtype="http://schema.org/Product">
			<a href="{{product.where_to_buy_link}}" class="btn btn-primary pull-right"><span class="fa fa-shopping-cart"></span> Buy Now</a>
			<h1 itemprop="name">{{page.name}}</h1>
					
			<div class="row">
				<div class="col-md-6">
					<div class="team-wrap">
						<img src="{{page.main_image.getImage()}}" class="img-responsive" itemprop="image">
						<div style="text-align:center">
						{{include social-buttons}}
						</div>
						<hr>
				<div class="description" itemprop="specifications">{{page.specs}}</div>		
						
						
					</div>
				</div>
				<div class="col-md-6">
					
					<div class="description" itemprop="description">{{page.description}}</div>
					<hr>
					
				
					<a href="{{product.where_to_buy_link}}" class="btn btn-primary btn-sm"><span class="fa fa-shopping-cart"></span> Buy Now</a>
					
				</div>
			</div>
		</div>
    </div>
</section>
