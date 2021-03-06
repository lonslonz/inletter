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
        map_canvas { height: 100%; }
        .height100 { height: 100%; }
   </style>
    <script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBvRBe22FwO6spmxB90aZz60HH8EBZNgj4&sensor=true">
    </script>
    
    <script src="resources/js/jquery-1.10.0.min.js"></script>
    <script src="resources/js/jquery.mobile-1.3.1.min.js"></script>
    <script type="text/javascript">

    
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

<div data-role="page" id="location" data-title="Location" class="height100">
    <div data-role="header" data-id="nh" data-position="fixed" >
        <div data-role="navbar">
            <ul>
            <li><a href="home#home" data-transition="slide" rel="external">홈</a></li>
            <li><a href="home#letter" data-transition="slide" rel="external"  >청첩장</a></li>            
            <li><a href="location" data-transition="slide" class="ui-btn-active ui-state-persist" rel="external">위치</a></li>
            <li><a href="gallery" data-transition="slide" rel="external">사진</a></li>
            <li><a href="home#comment" data-transition="slide" rel="external" >about</a></li>
            </ul>
        </div>
    </div>
    <div data-role="content" class="height100">
        <div id="map_canvas" style="width:100%; height:100%"></div>
    </div>
    <div data-role="footer" data-position="fixed" data-id="nf">
    <h1>2013년 6월 16일(일) 오후 2:30</h1>
    <h1>강남고속터미널 (경부선) 5층/강남웨딩컨벤션 그랜드홀</h1>
    </div>
</div>

 
</body>
</html>
