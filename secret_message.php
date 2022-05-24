
<?php 
  include('config/database.php');
  include('config/variables.php'); 

  // $id =  basename(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
  $id =  isset($_REQUEST['code']) ? $_REQUEST['code'] : ''; 

  $sql = "SELECT * FROM users where id =".$id." limit 1";
  $result = $conn->query($sql);
	
  while($i = $result->fetch_assoc()) {
	  $name = $i['name'];
  }

  include('header.php');
?>


	


<div class="clear"></div>
<div id="wrap"><section class="blog_area_two sec_pad">
<div class="container">
              <div style="display: flex;justify-content: center">
              <script type="text/javascript">
          atOptions = {
            'key' : 'c27360ff1a7465bcde6258522cee885b',
            'format' : 'iframe',
            'height' : 60,
            'width' : 468,
            'params' : {}
          };
          document.write('<scr' + 'ipt type="text/javascript" src="http' + (location.protocol === 'https:' ? 's' : '') + '://www.variousformatscontent.com/c27360ff1a7465bcde6258522cee885b/invoke.js"></scr' + 'ipt>');
        </script>
              </div>
			<div class="row">
				<div class="col-sm-8 ">	
				    <section class="breadcrumb_area_two">
						<ul class="list-unstyled bubble">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</section>
                    </br>
									
					<div class="sign_info">
							<h1 class="f_p f_600 f_size_24 t_color3 mb_10 align-center"><span class="title-custom">Message Board</span></h1>
							<div id="challenge_quiz" class="subscribe-inner quiz-container" style="padding-bottom: 15px;">
								<ul id="ul-li" class="arrow">
								<li>Let's play and have fun with <em><?php echo $name ?></em>.</li>
								<li>Send your message secretly to <em><?php echo $name ?></em>.</li>
								<li><em><?php echo $name ?></em> will never know who message.</li>
								</ul> 
							  <div class="form-group text_box">
								<textarea class="classic-form" type="text"  name="secret-text" id="secret-text" placeholder="Enter Your Thought" required ></textarea>
							  </div>
							   <div class="row">
							   	  <div class="col-md-6">
							   	  	 <a href="javascript:void(0)" class="btn_hover agency_banner_btn pay_btn pay_btn_two" id="secret-msg-send" class="quiz-button">Send</a><span>&nbsp;</span>
							   	  </div>
							   	  <div class="col-md-6 d-flex justify-content-end">
							   	  	<button class="btn_hover agency_banner_btn pay_btn pay_btn_two cus_mb-1" onclick="window.location.href='<?php echo $url_site ?>'" data-wow-duration="1s">Create your Link</button>
							   	  </div>
							   </div>
							  </br>
							</div>
						</div>
						
				</br>	

				
					 
			                              			

			</div><!--blog-sidebar-single-->

  </div>

<script async="async" data-cfasync="false" src="//pl16769163.effectivegatetocontent.com/835d0bcfa26055a45d75d8afa18b9068/invoke.js"></script>
<div id="container-835d0bcfa26055a45d75d8afa18b9068"></div>

</section>


<?php include('footer.php') ?>

<script>
function shareLink() {
  var copyText = document.getElementById("shareLink");
  copyText.select();
  copyText.setSelectionRange(0, 99999)
  document.execCommand("copy");
  jQuery("#copy-nofity").html("Link Copied");
  setTimeout(function(){ jQuery("#copy-nofity").html(""); }, 2000);
}

/*---Secret message Start button---*/
      jQuery('#create-secret-user').click(function(){
         var $name = jQuery("#secret-name").val();
         $name = $name.replace(/(<([^>]+)>)/gi, "");
         $name = $name.replace(/[^a-zA-Z ]/g, "");
         if(!$name){
			 alert("Enter Your Name");
			 return false;
		 }
		 
		 // teams
		var teams = jQuery('input[type="checkbox"]').is(":checked");
		if(!teams){
			alert("Agree our terms and conditions");
			return false;
		}
		 
		 jQuery("#create-secret-user").hide();
         jQuery(".info-loading").show();
		 
         jQuery.ajax({
                  url: ajaxurl,
                  type:'POST',
                  data: "action=create_secret_msg&name="+ $name,
                  success: function(html){
                    // window.location.href = window.location.href + "#actived";
                    location.reload(true);
                  }
            });
         //return false;
      });
	
   // secret answer ajax 
   jQuery('#secret-msg-send').click(function(){
	var $message = jQuery("#secret-text").val();
	$message = $message.replace(/(<([^>]+)>)/gi, "");
    $message = $message.replace(/[^a-zA-Z ]/g, "");
	
	jQuery.ajax({
			  url: "<?php echo $url_site."SecretMessageRequest.php" ?>",
			  type:'POST',
			  data: {
			  	send_message: true,
			  	message: $message,
			  	unique_id: "<?php echo $id ?>"
			  },
			  success: function(html){

			  	 // window.location.href = "message_success/<?php echo $id ?>";
				 jQuery("#challenge_quiz").html('<div style="text-align: center; padding: 20px;"><p class="align-center">Thanks For Your Participation</p><p class="align-center">Your Message Sent Successfully!</p><p class="align-center">Click below link to generate your secret message link.</p><a class="btn_hover agency_banner_btn pay_btn pay_btn_two"  href="<?php echo $url_site ?>">Generate your link</a> <a class="btn_hover agency_banner_btn pay_btn pay_btn_two" href="<?php echo $url_site."secret_message?code=".$id ?>">Send Again</a></div>');
			  }
	});
	 //return false;
  });

  // Refresh
   jQuery('.refresh').click(function(){
	jQuery("#message-board").html("<p class='align-center'>Loading...</p>");
	jQuery.ajax({
			  url: ajaxurl,
			  type:'POST',
			  data: "action=refresh",
			  success: function(res){
				jQuery("#message-board").html(res);
				jQuery('html, body').animate({
					scrollTop: jQuery("#message-board").offset().top - 120
				}, 500);
				reportDelete();
			  }
	});
	 //return false;
  }); 

 function reportDelete(){
	jQuery('.report-message').click(function(){
		$key = jQuery(this).attr("data-id");		
		jQuery.ajax({
				url: ajaxurl,
				type:'POST',
				data: "action=report_delete&key="+$key+"&&postId=1454715",
				success: function(html){
					jQuery( ".refresh" ).trigger( "click" );
				}
		//return false;
		});
	});	  
 }
 
 reportDelete();
</script>


<script type="application/javascript" src="https://sdki.truepush.com/sdk/v2.0.3/app.js" async></script>
<script>
var truepush = window.truepush || [];
        
truepush.push(function(){
    truepush.Init({
        id: "5fef6728af74ccdb536616b8"
    },function(error){
      if(error) console.error(error);
    })
})
</script>
<script type="text/javascript">
  window._taboola = window._taboola || [];
  _taboola.push({flush: true});
</script>
</body>
</html>
<script>
   jQuery(document).ready(function($) {
	  var post__id = 1454715;
	  var secret_ck = null;
	  if(post__id === secret_ck){
		  window.location.replace(siteUrl);
	  }
   });
</script>
