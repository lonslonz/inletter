
<!DOCTYPE html>
<html>
<head>
    <title>PhotoSwipe</title>
    <meta name="author" content="Ste Brennan - Code Computerlove - http://www.codecomputerlove.com/" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    
    <link href="http://code.jquery.com/mobile/1.0rc2/jquery.mobile-1.0rc2.min.css" rel="stylesheet" />
    <link href="resources/css/jquery-mobile.css" type="text/css" rel="stylesheet" />
    <link href="resources/css/photoswipe.css" type="text/css" rel="stylesheet" />
    
    <script type="text/javascript" src="resources/js/klass.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/mobile/1.0rc2/jquery.mobile-1.0rc2.min.js"></script>
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
                    .live('pageshow', function(e){
                        
                        var 
                            currentPage = $(e.target),
                            options = {},
                            photoSwipeInstance = $("ul.gallery a", e.target).photoSwipe(options,  currentPage.attr('id'));
                            
                        return true;
                        
                    })
                    
                    .live('pagehide', function(e){
                        
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
            <li><a href="#Gallery1">First Gallery</a></li> 
            <li><a href="#Gallery2">Second Gallery</a></li> 
        </ul> 
        
        <p>PhotoSwipe has also been designed to run stand-alone and can be easily integrated into your non jQuery / jQuery mobile websites:</p>
        
        <ul data-role="listview" data-inset="true">
            <li><a href="01-default.html" target="_blank">Code Computerlove</a></li> 
        </ul> 
        
    </div>

    <div data-role="footer">
        <h4>&copy; 2011 Code Computerlove</h4>
    </div>

</div>


<div data-role="page" data-add-back-btn="true" id="Gallery1" class="gallery-page">

    <div data-role="header">
        <h1>First Gallery</h1>
    </div>

    <div data-role="content">   
        
        <ul class="gallery">
        
            <li><a href="images/full/001.jpg" rel="external"><img src="images/thumb/001.jpg" alt="Image 001" /></a></li>
            <li><a href="images/full/002.jpg" rel="external"><img src="images/thumb/002.jpg" alt="Image 002" /></a></li>
            <li><a href="images/full/003.jpg" rel="external"><img src="images/thumb/003.jpg" alt="Image 003" /></a></li>
            <li><a href="images/full/004.jpg" rel="external"><img src="images/thumb/004.jpg" alt="Image 004" /></a></li>
            <li><a href="images/full/005.jpg" rel="external"><img src="images/thumb/005.jpg" alt="Image 005" /></a></li>
            <li><a href="images/full/006.jpg" rel="external"><img src="images/thumb/006.jpg" alt="Image 006" /></a></li>
            <li><a href="images/full/007.jpg" rel="external"><img src="images/thumb/007.jpg" alt="Image 007" /></a></li>
            <li><a href="images/full/008.jpg" rel="external"><img src="images/thumb/008.jpg" alt="Image 008" /></a></li>
            <li><a href="images/full/009.jpg" rel="external"><img src="images/thumb/009.jpg" alt="Image 009" /></a></li>
            
        </ul>
        
    </div>
    
    <div data-role="footer">
        <h4>&copy; 2011 Code Computerlove</h4>
    </div>
    
</div>

<div data-role="page" data-add-back-btn="true" id="Gallery2" class="gallery-page">

    <div data-role="header">
        <h1>Second Gallery</h1>
    </div>

    <div data-role="content">   
        
        <ul class="gallery">
        
            <li><a href="images/full/010.jpg" rel="external"><img src="images/thumb/010.jpg" alt="Image 010" /></a></li>
            <li><a href="images/full/011.jpg" rel="external"><img src="images/thumb/011.jpg" alt="Image 011" /></a></li>
            <li><a href="images/full/012.jpg" rel="external"><img src="images/thumb/012.jpg" alt="Image 012" /></a></li>
            <li><a href="images/full/013.jpg" rel="external"><img src="images/thumb/013.jpg" alt="Image 013" /></a></li>
            <li><a href="images/full/014.jpg" rel="external"><img src="images/thumb/014.jpg" alt="Image 014" /></a></li>
            <li><a href="images/full/015.jpg" rel="external"><img src="images/thumb/015.jpg" alt="Image 015" /></a></li>
            <li><a href="images/full/016.jpg" rel="external"><img src="images/thumb/016.jpg" alt="Image 016" /></a></li>
            <li><a href="images/full/017.jpg" rel="external"><img src="images/thumb/017.jpg" alt="Image 017" /></a></li>
            <li><a href="images/full/018.jpg" rel="external"><img src="images/thumb/018.jpg" alt="Image 018" /></a></li>
        
        </ul>
        
    </div>

    <div data-role="footer">
        <h4>&copy; 2011 Code Computerlove</h4>
    </div>

</div>

</body>
</html>
