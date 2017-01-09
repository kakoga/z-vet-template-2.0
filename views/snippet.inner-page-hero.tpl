
<div {{ if {page.main_image} }} class="hero-container " style="background-image:url('{{ page.main_image.getImage(2500) }}');" {{ else }}  class="hero-container no-image"{{ end-if }}>
	<h2>{{ page.page_title }}</h2>
	<hr/>
</div>
