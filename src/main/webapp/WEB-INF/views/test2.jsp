<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<link href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" rel="stylesheet" >
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map_canvas { height: 100% }
    </style>
    

<script type="text/javascript"
      src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDMezNwEHSR69SfL24dcf-u44imzVue2B0&sensor=false">
    </script>
    
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
    
<script type="text/javascript">
  function initialize() {
    var latlng = new google.maps.LatLng(-34.397, 150.644);
    var myOptions = {
      zoom: 8,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"),
        myOptions);
  }

</script>
</head>
<body onload="initialize()">
<div data-role="page">
  <div data-role="header">
    <h1>Map</h1>
  </div>
  <div data-role="content">
    <div id="map_canvas" style="width: 250px; height: 250px;"></div>
  </div>
</div>
</body>
</html>