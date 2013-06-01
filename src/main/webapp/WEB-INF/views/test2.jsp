<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<html>
<head>
    <title>PhotoSwipe</title>
    <meta name="author" content="Ste Brennan - Code Computerlove - http://www.codecomputerlove.com/" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0" name="viewport" />
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

       //Code to enable Photo Swipe for galleries using jQuery Mobile
       //Remember to add rel=external to gallery a links or else bugs will occur
       (function(window, $, PhotoSwipe){
           $(document).ready(function(){
               
               var activePage = $('.ui-page-active');
           
               options = {},
               photoSwipeInstance = $("ul.gallery a", activePage).photoSwipe(options,  activePage.attr('id'));
               
                       
               $('div.gallery-page')
               .live('pageshow', function(e){
                   var currentPage = $(e.target),
                   options = {},
                   photoSwipeInstance = $("ul.gallery a", e.target).photoSwipe(options,  currentPage.attr('id'));
                       
                   return true;
               })
               .live('pagehide', function(e){
                   var currentPage = $(e.target),
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

<div data-role="page" data-add-back-btn="true" id="Gallery1" class="gallery-page">

    <div data-role="header" data-id="nh" data-position="fixed" >
        <div data-role="navbar">
            <ul>
            <li><a href="#home" data-transition="slide" class="ui-btn-active ui-state-persist">홈</a></li>
            <li><a href="#letter" data-transition="slide">청첩장</a></li>
            <li><a href="location" data-transition="slide" rel="external" or data-ajax="false">위치</a></li>
            <li><a href="gallery" data-transition="slide">사진</a></li>
            <li><a href="#comment" data-transition="slide" >드리는말씀</a></li>
            </ul>
        </div>
    </div>

    <div data-role="content">   
        <ul class="gallery">
            <li><a href="resources/img/image_1.jpg" rel="external"><img src="resources/img/small_1.jpg" alt="image 01" /></a></li>
            <li><a href="resources/img/image_2.jpg" rel="external"><img src="resources/img/small_2.jpg" alt="image 02" /></a></li>
            <li><a href="resources/img/image_3.jpg" rel="external"><img src="resources/img/small_3.jpg" alt="image 03" /></a></li>
            <li><a href="resources/img/image_4.jpg" rel="external"><img src="resources/img/small_4.jpg" alt="image 04" /></a></li>
            <li><a href="resources/img/image_5.jpg" rel="external"><img src="resources/img/small_5.jpg" alt="image 05" /></a></li>
            <li><a href="resources/img/image_6.jpg" rel="external"><img src="resources/img/small_6.jpg" alt="image 06" /></a></li>
            <li><a href="resources/img/image_7.jpg" rel="external"><img src="resources/img/small_7.jpg" alt="image 07" /></a></li>
            <li><a href="resources/img/image_8.jpg" rel="external"><img src="resources/img/small_8.jpg" alt="image 08" /></a></li>
            <li><a href="resources/img/image_9.jpg" rel="external"><img src="resources/img/small_9.jpg" alt="image 09" /></a></li>
            <li><a href="resources/img/image_10.jpg" rel="external"><img src="resources/img/small_10.jpg" alt="image 10" /></a></li>
            <li><a href="resources/img/image_11.jpg" rel="external"><img src="resources/img/small_11.jpg" alt="image 11" /></a></li>
            <li><a href="resources/img/image_12.jpg" rel="external"><img src="resources/img/small_12.jpg" alt="image 12" /></a></li>
            <li><a href="resources/img/image_13.jpg" rel="external"><img src="resources/img/small_13.jpg" alt="image 13" /></a></li>
            <li><a href="resources/img/image_14.jpg" rel="external"><img src="resources/img/small_14.jpg" alt="image 14" /></a></li>
            <li><a href="resources/img/image_15.jpg" rel="external"><img src="resources/img/small_15.jpg" alt="image 15" /></a></li>
        </ul>
    </div>
    
</div>




</body>
</html>
