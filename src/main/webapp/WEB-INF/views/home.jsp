<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<html>
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />

    <title>Invitation Letter</title>
    <link href="resources/css/jquery.mobile-1.3.1.min.css" rel="stylesheet" >
    <style type="text/css">
        html { height: 100% }
        body { height: 100%; margin: 0; padding: 0 }
        #map_canvas { height: 100%; }
        .notdr {draggable:false;}
        #currImage {draggable:false; height:100%; width:100%;}
        img {
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -o-user-select: none;
  user-select: none;
}
      .unselectable {
    /* For Opera and <= IE9, we need to add unselectable="on" attribute onto each element */
    /* Check this site for more details: http://help.dottoro.com/lhwdpnva.php */
    -moz-user-select: none; /* These user-select properties are inheritable, used to prevent text selection */
    -webkit-user-select: none;
    -ms-user-select: none; /* From IE10 only */
    user-select: none; /* Not valid CSS yet, as of July 2012 */

    -webkit-user-drag: none; /* Prevents dragging of images/divs etc */
    user-drag: none;
}
    </style>
     
    <script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDMezNwEHSR69SfL24dcf-u44imzVue2B0&sensor=true">
    </script>
    
    <script src="resources/js/jquery-1.10.0.min.js"></script>
    <script src="resources/js/jquery.mobile-1.3.1.min.js"></script>
    <script type="text/javascript">
      
    $(function(){
        $("#images").bind("swipeleft",function(){   
        	
        	var current = $("#currImage").attr("src");
        	console.log('current:' + current);
        	var words = current.split("_");
        	var num = words[1];
        	console.log('num:' + num);
        	
        	if(num >= 2) {
        	   var newnum = num - 1;
        	
        	   $("#currImage").attr("src", "resources/img/image_" + newnum);
        	   $("#currImage").addClass("unselectable");
        	   console.log("current : " + "resources/img/image_" + newnum);
        	   console.log('left');
        	}
        });
        $("#images").bind("swiperight",function(){
        	var current = $("#currImage").attr("src");
            console.log('current:' + current);
            var words = current.split("_");
            var num = words[1];
            console.log('num:' + num);
            
            if(num <= 10) {
               var newnum = num + 1;
               $("#currImage").addClass("unselectable");
               $("#currImage").attr("src", "resources/img/image_" + newnum);
               $("#currImage").attr("unselectable", "on");
               $("#currImage").attr("draggable", "false");
               console.log("current : " + "resources/img/image_" + newnum);
               console.log('left');
            }
            console.log('right');
        });
        
    });
    
    function initialize() {
        var latLng = new google.maps.LatLng(37.50549420, 127.0067190);
        var mapOptions = {
            center: latLng,
            zoom: 16,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            streetViewControl: true
            };
        var map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);
      
        var marker = new google.maps.Marker({
            position: latLng,
            map: map,
            title: 'Here it is.'});
    }
    

    
  </script>
</head>
<body onload="initialize()">

<div id="home" data-role="page" data-title="Wedding invitation" data-theme="d" >
    <div data-role="header" data-id="nh" data-position="fixed" >
        <div data-role="navbar">
	        <ul>
	        <li><a href="#home" data-transition="slide" class="ui-btn-active ui-state-persist">홈</a></li>
	        <li><a href="#letter" data-transition="slide">청첩장</a></li>
	        <li><a href="location" data-transition="slide">위치</a></li>
	        <li><a href="#gallery" data-transition="slide">사진</a></li>
	        <li><a href="#comment" data-transition="slide" >드리는말씀</a></li>
	        </ul>
        </div>
    </div>
    <div data-role="content">
        <img src="resources/img/main.jpg" draggable="false" unselectable="on" width="100%" height="100%"/>
    </div>
    <div data-role="footer" data-position="fixed" data-id="nf">
    <h1>2013년 6월 16일(일) 오후 2:30</h1>
    <h1>강남고속터미널 (경부선) 5층/강남웨딩컨벤션 그랜드홀</h1>
    </div>
</div>
<div data-role="page" id="letter" data-title="Invitation letter">
    <div data-role="header" data-id="nh" data-position="fixed" >
        <div data-role="navbar">
            <ul>
            <li><a href="#home" data-transition="slide">홈</a></li>
            <li><a href="#letter" data-transition="slide"  class="ui-btn-active ui-state-persist">청첩장</a></li>
            <li><a href="#location" data-transition="slide">위치</a></li>
            <li><a href="#gallery" data-transition="slide">사진</a></li>
            <li><a href="#comment" data-transition="slide" >드리는말씀</a></li>
            </ul>
        </div>
    </div>
    <div data-role="content">
        <img src="resources/img/invitation.jpg" width="100%" height="100%"/>
    </div>
    <div data-role="footer" data-position="fixed" data-id="nf">
    <h1>2013년 6월 16일(일) 오후 2:30</h1>
    <h1>강남고속터미널 (경부선) 5층/강남웨딩컨벤션 그랜드홀</h1>
    </div>
</div>
<div data-role="page" id="gallery" data-title="Gallery">
    <div data-role="header" data-id="nh" data-position="fixed" >
        <div data-role="navbar">
            <ul>
            <li><a href="#home" data-transition="slide">홈</a></li>
            <li><a href="#letter" data-transition="slide" >청첩장</a></li>
            <li><a href="#location" data-transition="slide">위치</a></li>
            <li><a href="#gallery" data-transition="slide"  class="ui-btn-active ui-state-persist">사진</a></li>
            <li><a href="#comment" data-transition="slide" >드리는말씀</a></li>
            </ul>
        </div>
    </div>
    <div data-role="content" id="images">
        <img id="currImage" draggable="false" unselectable="on" src="resources/img/image_1.jpg" width="100%" height="100%"/>
    </div>
    <div data-role="footer" data-position="fixed" data-id="nf">
    <h1>2013년 6월 16일(일) 오후 2:30</h1>
    <h1>강남고속터미널 (경부선) 5층/강남웨딩컨벤션 그랜드홀</h1>
    </div>
</div>
<div data-role="page" id="comment" data-title="Comment">
    <div data-role="header" data-id="nh" data-position="fixed" >
        <div data-role="navbar">
            <ul>
            <li><a href="#home" data-transition="slide">홈</a></li>
            <li><a href="#letter" data-transition="slide" >청첩장</a></li>
            <li><a href="#location" data-transition="slide">위치</a></li>
            <li><a href="#gallery" data-transition="slide" >사진</a></li>
            <li><a href="#comment" data-transition="slide"  class="ui-btn-active ui-state-persist">드리는말씀</a></li>
            </ul>
        </div>
    </div>
    <div data-role="content" id="images">
        <h1>진심으로 감사드립니다.</h1>
        <br>
        <h3>이종민 : 010-2728-1739</h3>
        <h3>이정옥 : 010-9522-0629</h3> 
    </div>
    <div data-role="footer" data-position="fixed" data-id="nf">
    <h1>2013년 6월 16일(일) 오후 2:30</h1>
    <h1>강남고속터미널 (경부선) 5층/강남웨딩컨벤션 그랜드홀</h1>
    </div>
</div>
 
</body>
</html>
