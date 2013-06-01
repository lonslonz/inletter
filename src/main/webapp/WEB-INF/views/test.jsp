<!DOCTYPE html>
<html>
<head>
    <title>PhotoSwipe</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=false;" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    
    <link href="resources/css/jquery.mobile-1.3.1.min.css" rel="stylesheet" >
    <link href="resources/css/jquery-mobile.css" type="text/css" rel="stylesheet" />
    <link href="resources/css//photoswipe.css" type="text/css" rel="stylesheet" />
    
    <script type="text/javascript" src="resources/js/klass.min.js"></script>
     
    <script type="text/javascript" src="resources/js/jquery-1.10.0.min.js"></script>
    <script type="text/javascript" src="resources/js/jquery.mobile-1.3.1.min.js"></script>
    <!-- 
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/mobile/1.0rc2/jquery.mobile-1.0rc2.min.js"></script>
    -->
    <script type="text/javascript" src="resources/js/code.photoswipe.jquery-3.0.5.min.js"></script>
    
    
    <script type="text/javascript">
        
        /*
         * IMPORTANT!!!
         * REMEMBER TO ADD  rel="external"  to your anchor tags. 
         * If you don't this will mess with how jQuery Mobile works
         */
        
        (function(window, $, PhotoSwipe){
            
            $(document).ready(function(){
                
                $('div.gallery-page')
                    .bind('pageshow', function(e){
                        
                        var 
                            currentPage = $(e.target),
                            options = {},
                            photoSwipeInstance = $("ul.gallery a", e.target).photoSwipe(options,  currentPage.attr('id'));
                            
                        return true;
                        
                    })
                    
                    .bind('pagehide', function(e){
                        
                        var 
                            currentPage = $(e.target),
                            photoSwipeInstance = PhotoSwipe.getInstance(currentPage.attr('id'));

                        if (typeof photoSwipeInstance != "undefined" && photoSwipeInstance != null) {
                            PhotoSwipe.detatch(photoSwipeInstance);
                        }
                        
                        return true;
                        
                    });
                
            });
        
        }(window, window.jQuery, window.Code.PhotoSwipe));
        
    </script>
    
</head>
<body>


<div data-role="page" id="Home">

    <div data-role="header">
        <h1>PhotoSwipe</h1>
    </div>
    
    
    <div data-role="content" >  
        
        <p>These examples show PhotoSwipe integrated with jQuery Mobile:</p>        
        
        <ul data-role="listview" data-inset="true">
            <li><a href="gallery">First Gallery</a></li> 
           
        </ul> 
        
        <p>PhotoSwipe has also been designed to run stand-alone and can be easily integrated into your non jQuery / jQuery mobile websites:</p>
        
        <ul data-role="listview" data-inset="true">
            <li><a href="01-default.html" target="_blank">Code Computerlove</a></li> 
        </ul> 
        
    </div>

    <div data-role="footer">
        <h4>&copy; 2012 Code Computerlove</h4>
    </div>

</div>

</body>
</html>
