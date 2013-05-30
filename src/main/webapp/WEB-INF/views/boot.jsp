    <!DOCTYPE html>
    <html>
    <head>
    <title>DejaView</title>
    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <link href="http://vjs.zencdn.net/c/video-js.css" rel="stylesheet">
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
    .scrollable {
	  float: left;
	  margin-left: 20px;
	  overflow: scroll;
	  overflow-x: hidden;
	  width: 750px;
	  height: 250px;
    }
    </style>
    <script src="http://vjs.zencdn.net/c/video.js"></script>
    <script src="resources/js/jquery-1.9.0.js"></script>
    <script src="resources/js/bootstrap.js"></script>
    <script type="text/javascript">
    var trackLoded = false;
    $(document).ready(function(){
    	$("#1min").click(function() {
    	    var myplayer = _V_("myvideo");
    	    myplayer.currentTime(60);
    	});
    	$("#2min").click(function() {
            var myplayer = _V_("myvideo");
            myplayer.currentTime(120);
        });
    	$("#see").click(function() {
    		if(!window.trackLoaded) {
	    		var myplayer = _V_("myvideo");	
	            var track = myplayer.textTracks[0];
	            $.each(track.cues, function (key, value) {
	            	var id = "id='" + this.startTime + "'"; 
	            	$("#trackTable").last().append("<tr><td class='clickable'" + id + ">" + this.text + "</td></tr>");
	                //console.log(this.startTime +  " : " + this.text);
	            });
    		}	
        }); 
    	
    	var loadTrack = function() {
    		if(!window.trackLoaded) {
    			
	            var myplayer = this;
	            var track = myplayer.textTracks[0];
	            $.each(track.cues, function (key, value) {
	            	var id = "id='" + this.startTime + "'"; 
	            	$("#trackTable").last().append("<tr><td class='clickable'" + id + ">" + this.text + "</td></tr>");
	                //console.log(this.startTime +  " : " + this.text);
	            });
	            trackLoaded = true;
    		}
        }
        
        _V_("myvideo").ready(function(){
            var myplayer = this;
           
            //myplayer.addEvent("play", loadTrack);
            _V_("myvideo").addEvent("play", loadTrack);	
            	
            
            });
        
        $('#trackTable').on('click', '.clickable', function() {
            console.log('clickable');
            console.log('id : ' + $(this).attr('id'));
            console.log('text : ' + $(this).text());
            var myplayer = _V_("myvideo");
            myplayer.currentTime($(this).attr('id'));
            
        });
    });

    
    
    </script>
    </head>
    <body>
        <div class="page-header">
	    <h1>DejaView<small>Anyone can search</small></h1>
	    </div>
	    
    <div class="row">
        <div class="span2" ></div>
        <div class="span6" id="vplayer">
        <video id="myvideo" class="video-js vjs-default-skin" controls
                preload="auto" width="640" height="480" 
                data-setup="{}">
            <source src="resources/video/steve.mp4" type='video/mp4'>
            <track kind="subtitles" src="resources/video/steve.vtt" srclang="en" label="English" default>		
        </video>
            
        </div>
        <div class="span4"></div>
    </div>
    
    <div class="row" >
    <div class="span6 offset2">
    
    <button class="btn btn-primary" type="button" id="see">subtitle</button>
    </div>	
    </div>
    
    <div class="row" id="padd">
    <div class="span6 offset2">
        <div class="scrollable">
            <table class="table table-hover" id="trackTable">
	            <tr class='clickable'>
	            	    <td>
	                   
	                   
	                   
                    </td>
	            </tr>
        
            </table> 
        </div>
    
    </div>
    </div>
    
    
    
    </body>
    </html>