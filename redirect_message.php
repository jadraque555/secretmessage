
<?php include('config/variables.php') ?>
<?php include('config/database.php') ?>
<?php 

if(!isset($_COOKIE['secret-message-id'])) {

	header("Location: ".$url_site);
}

$sql = "SELECT * FROM user_message where user_id =".$_COOKIE['secret-message-id']." ORDER BY id DESC";
$result = $conn->query($sql);


include("header.php");

?>



<div class="clear"></div>
<div id="wrap">
		<section class="blog_area_two sec_pad">
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
                    <div class="col-lg-8">
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
                       	<div class="refresh" style="cursor: pointer;"><i class="fa fa-refresh"></i><span>Refresh</span></div>
						<div class="sign_info">
							<h1 class="f_p f_600 f_size_24 t_color3 mb_10 align-center"><span class="title-custom">Message Board</span></h1>
							<div class="blockquote-wrapper" id="message-board">
								<?php

									if ($result->num_rows > 0) {
									  // output data of each row
									  while($row = $result->fetch_assoc()) {

									  	  $strDate = strtotime($row['created_at']);

									      echo '<div class="secret-quote" data-toggle="modal" data-target="#modal-0">
													<p class="secret-received-message">
													 '.$row['message'].'											 </p>
													<div class="secret-message-notify">
													<span><em>'.date('Y-M-d H:i:s', $strDate).'</em></span>
													<div class="report-a-span">
													   <a href="javascript:;" class="removeMessage" style="color:white;font-weight:bold">
														<span data-id="'.$row['id'].'" data-name="delete" class="report-message"><i class="far fa-trash-alt" style="margin-left:10px"></i> Delete</span>
														</a>
													</div>
													</div>
												</div>';
									  }
									} else {
									  echo "<span class='align-center'><b>¯\_(ツ)_/¯</b></br>No feedbacks from your friends yet!</span>	";
									}
								 ?>			
							</div>
							
						</div>
						<a href="https://web.facebook.com/Official.CebuVines" target="new" class="telegram" id="telegrambtn" title="TELEGRAM">JOIN OUR FACEBOOK PAGE

						</a>
						<div id="ad-unit" class="ad-unit">
						<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                        <!-- secret-link-fixed -->
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:728px;height:90px"
                             data-ad-client="ca-pub-2462751652998210"
                             data-ad-slot="7248766648"></ins>
                        <script>
                             (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                        </div>
						<br /><br />
					   					   						<div class="sign_info" id="note-info">
							<h1 class="f_p f_600 f_size_24 t_color3 mb_10 align-center"><span class="title-custom">Secret Message</span></h1>
										<div class="subscribe-inner">    
				    <div class="text-center">
				    <strong class="welcome-success">Hi, Your link has been generated Successfully </strong>
					<i class="generated-info align-center">Now share your link with your friends:</i>
					</div>
					<div class="subscribe-form"> 
							<ul class="response-form form-group text_box">
								<li>
									<span style="color:red" id="copy-nofity"></span>
									<input type="text" class="classic-form" name="link" value="<?php echo $url_site."secret_message?code=".$_COOKIE['secret-message-id'] ?>" id="shareLink" readonly>
								</li>
								<li class="sub-button">
							<!-- 	    <a class="button6-content btn_hover agency_banner_btn pay_btn pay_btn_two whatsapp_bt" href="whatsapp://send?text=Send a secret message 🗝 to dsfds, *Wanna tell anything or something else to me ? Now it's time 😎, I'm very excited 😍 ,I will never know who sents me*, Just Fun lets try 🗝 👉 https://www.secretmessage.link/secret/61914f574ddee/">
								<i class="fab fa-whatsapp"></i> &nbsp; Share on WhatsApp</a> -->
									<button onclick="shareLink()" class="btn_hover agency_banner_btn pay_btn pay_btn_two hvr-shutter-out-horizontal copy_bt"><i class="far fa-copy"></i> &nbsp; Copy Your Link</button>
								</li>
								<!-- <li>
									<button id="secret-message-share" class="btn_hover agency_banner_btn pay_btn pay_btn_two hvr-shutter-out-horizontal more_share"><i class="fas fa-share-alt"></i> &nbsp; More To Share </button>
								</li> -->
							</ul>
					</div>
				</div>
										</div>
						</br>

</br>
<div style="display: flex;justify-content: center;">
	<script type="text/javascript">
	atOptions = {
		'key' : '0bb287e9d753d78f23a744c577c24173',
		'format' : 'iframe',
		'height' : 250,
		'width' : 468,
		'params' : {}
	};
	document.write('<scr' + 'ipt type="text/javascript" src="http' + (location.protocol === 'https:' ? 's' : '') + '://www.variousformatscontent.com/0bb287e9d753d78f23a744c577c24173/invoke.js"></scr' + 'ipt>');
</script>	
</div>
			<div class="su-heading su-heading-style-default su-heading-align-center" id="" style="font-size:13px;margin-bottom:20px"><div class="su-heading-inner">
<h2>Frequently Asked Question</h2>
</div></div>
<div class="su-accordion su-u-trim">
<div class="su-spoiler su-spoiler-style-default su-spoiler-icon-plus su-spoiler-closed" data-scroll-offset="0" data-anchor-in-url="no"><div class="su-spoiler-title" tabindex="0" role="button"><span class="su-spoiler-icon"></span>What is Secret Message?</div><div class="su-spoiler-content su-u-clearfix su-u-trim">
<p><strong>Secret Message</strong> allows you to receive anonymous messages from your friends. It&#8217;s you in discovering your strengths and areas for improvement by receiving honest, constructive feedback from your employees and your friends.</div></div>
<div class="su-spoiler su-spoiler-style-default su-spoiler-icon-plus su-spoiler-closed" data-scroll-offset="0" data-anchor-in-url="no"><div class="su-spoiler-title" tabindex="0" role="button"><span class="su-spoiler-icon"></span>Why Secret Message link is not working ?</div><div class="su-spoiler-content su-u-clearfix su-u-trim">
<p>Please, enable cookies from your browser settings. Or Follow the below steps</p>
<ol>
<li value="1">Open (recommended to use <strong>Chrome Browser</strong>) For all Android, iPhone Device.</li>
<li value="2">Go to <strong><em>More menu &gt; Settings &gt; Site settings &gt; Cookies</em></strong>.<br />
You&#8217;ll find the <strong>More menu</strong> icon in the top-right corner.</li>
<li value="3">Make sure cookies are turned <strong>&#8216;on</strong>&#8216; or<strong> &#8216;allow&#8217;</strong>.</li>
</ol>
</div></div>
<div class="su-spoiler su-spoiler-style-default su-spoiler-icon-plus su-spoiler-closed" data-scroll-offset="0" data-anchor-in-url="no"><div class="su-spoiler-title" tabindex="0" role="button"><span class="su-spoiler-icon"></span>How do you send a secret message?</div><div class="su-spoiler-content su-u-clearfix su-u-trim">
<p>1) Enter the URL: https://www.secretmessage.link</p>
<p>2) Enter your name, Click create your link button, and share the link with your friends on WhatsApp, Facebook, Instagram, Twitter, or any other platform Social Media Platform.</p>
<p>3) Once Publish your link on Public, You Receive anonymous messages that you can only see.</p>
</div></div>
<div class="su-spoiler su-spoiler-style-default su-spoiler-icon-plus su-spoiler-closed" data-scroll-offset="0" data-anchor-in-url="no"><div class="su-spoiler-title" tabindex="0" role="button"><span class="su-spoiler-icon"></span>Is Secret Message only for your best friends?</div><div class="su-spoiler-content su-u-clearfix su-u-trim">
<p>No, you can also share the link with everyone on your WhatsApp Status or Facebook. By doing this, you will be able to know how people think about you in general.</p>
</div></div>
<div class="su-spoiler su-spoiler-style-default su-spoiler-icon-plus su-spoiler-closed" data-scroll-offset="0" data-anchor-in-url="no"><div class="su-spoiler-title" tabindex="0" role="button"><span class="su-spoiler-icon"></span>Why i should use Secret Message ?</div><div class="su-spoiler-content su-u-clearfix su-u-trim">Our Anonymous Messaging App comes along with many great features. </div></div>
<div class="su-spoiler su-spoiler-style-default su-spoiler-icon-plus su-spoiler-closed" data-scroll-offset="0" data-anchor-in-url="no"><div class="su-spoiler-title" tabindex="0" role="button"><span class="su-spoiler-icon"></span>Is this app safe?</div><div class="su-spoiler-content su-u-clearfix su-u-trim">
<p>Yes, The platform is safer than ever, as we are continuously working on the user experience to make the platform more fun. We do care about safety. If you feel unsafe, Please you can deactivate your account first &amp; don&#8217;t use our website.</div></div>
<div class="su-spoiler su-spoiler-style-default su-spoiler-icon-plus su-spoiler-closed" data-scroll-offset="0" data-anchor-in-url="no"><div class="su-spoiler-title" tabindex="0" role="button"><span class="su-spoiler-icon"></span>Someone is abusing or threaten?</div><div class="su-spoiler-content su-u-clearfix su-u-trim">
<p>Please Understand If you have used a service called anonymous messages,<br />
you must understand the identity of users sending you messages are not stored.</p>
<ul>
<li>There are no ways to understand who sent you the messages.</li>
<li>There is no way from my side to understand who messaged you.</li>
<li>I completely understand your concern, but that&#8217;s how our website works.  </div></div></li>
</ul>
<p>&nbsp;</p>
</div>
<p>As you have got a fair enough idea about what Secret Message Link.</p>
<p>Now time to create your link &amp; share this with your friends so that you can start to receive anonymous compliments.</p>
												
						
					    
					</div>
                    <div class="col-lg-4">
                        <div class="blog-sidebar">
                           <div id="sidebar">


	<div id="text-2" class="req_bid widget_text">			<div class="textwidget"><p>
<!-- secret-link-sidebar --><br />></p>
</div>
		</div>			

</div>                        </div>
                    </div>

                </div>
            </div>

<script async="async" data-cfasync="false" src="//pl16769163.effectivegatetocontent.com/835d0bcfa26055a45d75d8afa18b9068/invoke.js"></script>
<div id="container-835d0bcfa26055a45d75d8afa18b9068"></div>

</section>

<div class="clear"></div>
</div>
<div class="sticky-ad">
    

<!-- Fixed ad -->
<ins class="adsbygoogle"
     style="display:inline-block;width:320px;height:50px"
     data-ad-client="ca-pub-2462751652998210"
     data-ad-slot="2175808174"></ins>
<script>
     (adsbygoogle = window.adsbygoogle || []).push({});
</script>
    
</div>



<?php include("footer.php") ?>


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
			  url: ajaxurl,
			  type:'POST',
			  data: "action=update_secret_msg&message="+ $message +"&postId=1454715",
			  success: function(html){
				 jQuery("#challenge_quiz").html('<div style="text-align: center; padding: 20px;"><p class="align-center">Thanks For Your Participation</p><p class="align-center">Your Message Sent Successfully!</p><p class="align-center">Click below link to generate your secret message link.</p><a class="btn_hover agency_banner_btn pay_btn pay_btn_two"  href="https://www.secretmessage.link">Generate your link</a></div>');
			  }
	});
	 //return false;
  });

  // Refresh
   jQuery('.refresh').click(function(){
	jQuery("#message-board").html("<p class='align-center'>Loading...</p>");
	jQuery.ajax({
			  url: "<?php echo $url_site.'SecretMessageRequest.php' ?>",
			  type:'POST',
			  data: {
			  	 get_user_message : true,
			  },
			  success: function(res){

			  	var res = JSON.parse(res);
			  	var messages = [];
			  	console.log(res);
			  	$.each(res.data, function(i, data) {
			  		console.log(data);
			  		messages.push(`
						<div class="secret-quote" data-toggle="modal" data-target="#modal-0">
							<p class="secret-received-message">
							 ${data['message']}											 </p>
							<div class="secret-message-notify">
							<span><em>${data['created_at']}</em></span>
							<div class="report-a-span">
							   <a href="javascript:;" class="removeMessage" style="color:white;font-weight:bold">
								<span data-id="8" data-name="delete" class="report-message"><i class="far fa-trash-alt" style="margin-left:10px"></i> Delete</span>
								</a>
							</div>
							</div>
						</div>
			  		`);
			  	});
				jQuery("#message-board").html(messages.join(""));
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
		$id = jQuery(this).attr("data-id");

		var parent = jQuery(this).closest('.secret-quote');

		jQuery.ajax({
				url: "<?php echo $url_site."SecretMessageRequest.php" ?>",
				type:'POST',
				data: {
					remove_message: true,
					id: $id
				},
				success: function(html){
					 parent.fadeOut("normal", function() {
					        $(this).remove();
					 });

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
jQuery( "#secret-message-share" ).click(function() {
		if (navigator.share) {
			navigator.share({
				text: "whatsapp://send?text=Send a secret message 🗝 to dsfds, *Wanna tell anything or something else to me? Now it's time 😎, I'm very excited 😍 ,I will never know who sents me*, Just Fun lets try 🗝 👉 https://www.secretmessage.link/secret/61914f574ddee/"
			}).then(() => {
				console.log('Thanks for sharing!');
			})
		} else {
			console.log('Web share not supported');
		}
});
</script>
<script>
 var cookirs_e = "Cookies enabled: " + navigator.cookieEnabled;
 function isFacebookApp() {
        var ua = navigator.userAgent || navigator.vendor || window.opera;
        return (ua.indexOf("FBAN") > -1) || (ua.indexOf("FBAV") > -1);
    } 

	function isInstaApp() {
        var ua = navigator.userAgent || navigator.vendor || window.opera;
        return (ua.indexOf("Instagram") > -1) || (ua.indexOf("Instagram") > -1);
    } 	
	
	if(isInstaApp()){
         window.location.href = "https://gaflagames.page.link/secretmessage";
    }
</script>