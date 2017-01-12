<div id="testimonials">
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
         <div class="body-text" >
           <h5>{{ page.body_text }}</h5>
         </div>
         {{ each client_testimonials as ct sort by ct.sort_order }}
         <div class="row">
           <div class="col-md-12">
           <p>{{ ct.client_testimonial }}</p>
           <p><em>{{ ct.client_first_name }} {{ ct.client_last_name }}</em></p>
           <p>{{ ct.client_location }}</p>
           <hr>
           </div>
         </div>
         {{ end-each }}
       </div>
       <div class="desktop">
         <div class="col-md-3" >
           {{ include sectionlinks }}
         </div>
       </div>
     </div>
   </div>
 </div>
</div>
