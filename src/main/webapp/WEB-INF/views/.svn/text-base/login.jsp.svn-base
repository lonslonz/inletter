    <!DOCTYPE html>
    <html>
    <head>
    <title>Bootstrap 101 Template</title>
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.css" rel="stylesheet" media="screen">
    
    <style>
    .mybutton {
    -webkit-appearance: none;
    height: 50px;
    background-color:#FFF;
    color:#666;
    font-weight:bold;
    border: solid #666 1px;
    font-size: 14px;
    }
    #padd {
        position: relative;
        padding-top: 40px;
    }
    #line {
        border: 1px solid #555;
    }
    </style>
    <script src="resources/js/jquery-1.9.0.js"></script>
    <script src="resources/js/bootstrap.js"></script>
     <script type="text/javascript">
	    $(document).ready(function(){
	         $("#btlogin").click(function() {
	        	  console.log("click login");
	        	  
	        	  $.ajax({
	                  url: "/gluon_web/login",
	                  dataType:"json",
	                  async: false});
	         });
	         $("#btlogout").click(function() {
                 console.log("click logout");
                 
                 $.ajax({
                     url: "/gluon_web/logout",
                     dataType:"json",
                     async: false});
            });
	         $("#btcheck").click(function() {
                 console.log("click logout");
                 
                 var str = $.ajax({
                     url: "/gluon_web/getc",
                     dataType:"text",
                     async: false});
                 console.log('return : ' + str.responseText);
            }); 
	    });
	         </script>
    </head>
    <body data-spy="scroll" data-target=".bs-docs-sidebar">

    <!-- Navbar

  <div class="container">

    <!-- Docs nav
    ================================================== -->
    <div class="row">
      
      <div class="span9">
      <p>
      <div id="login">
      </div>
      </p>
      <button id="btlogin" class="btn btn-primary">login</button>
        <button id="btcheck" class="btn btn-primary">check</button>
        <button id="btlogout" class="btn btn-primary">logout</button>
      </div>
    </div>

  </div>



  </body>

    </html>