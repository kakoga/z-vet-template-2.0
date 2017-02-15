<div id="page-top" class="index">
	{{include header}}
	(**{{ if {page.path_part} != 'zesty_home' }}**)
	<div class="header-spacing" ></div>
	(**{{ end-if }}**)
	{{current_view}}

	{{include footer}}

</div>
<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
		{{ clippings.pop_up_content }}
			<span class="clear-fix"></span>
			<hr/>
			<div class="text-center">
				<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
			</div>
    </div>
  </div>
</div>
{{ if {clippings.pop_up_content} != '' && {@popup} != 1 }}
<script type="text/javascript">
    $(window).load(function(){
        $('#myModal').modal('show');
    });
</script>
{{ @popup = 1 }}
{{ end-if }}
<script>
	$('.header-spacing').css('margin-bottom', $('#nav-wrap').outerHeight() );
</script>
