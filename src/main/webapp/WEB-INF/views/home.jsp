<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<html>
<head>
<!--
 <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
-->
    <title>Invitation Letter</title>
    <link href="resources/css/jquery.mobile-1.3.1.min.css" rel="stylesheet" >
    <link href="resources/css/jquery-mobile.css" type="text/css" rel="stylesheet" />
    <link href="resources/css/photoswipe.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        html { height: 100% }
        body { height: 100%; margin: 0; padding: 0 }
        #map_canvas { height: 100%; }
        #currImage {draggable:false; height:100%; width:100%;}
    </style>
    
    <script type="text/javascript" src="resources/js/klass.min.js"></script>
    <script src="resources/js/jquery-1.10.0.min.js"></script>
    <script type="text/javascript">
//$(document).bind('mobileinit', function(){
  //$.extend(  $.mobile , {
  //  metaViewportContent: 'width=device-width, initial-scale=2, minimum-scale=2, maximum-scale=2, user-scalable=yes'; 
  //});
 //  $.mobile.metaViewportContent = "width=device-width, minimum-scale=1, maximum-scale=2";
//});
    </script>
    <script src="resources/js/jquery.mobile-1.3.1.min.js"></script>
    <script type="text/javascript" src="resources/js/code.photoswipe.jquery-3.0.5.min.js"></script>
    
    <meta name="viewport" content="initial-scale=1.0, user-scalable=yes, maximum-scale=4" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    
    <script type="text/javascript">
    </script>
    
</head>
<body onload="initialize()">

<div id="home" data-role="page" data-title="Wedding invitation" data-theme="d" >
    <div data-role="header" data-id="nh" data-position="fixed" >
        <div data-role="navbar">
	        <ul>
	        <li><a href="#home" data-transition="slide" class="ui-btn-active ui-state-persist">홈</a></li>
	        <li><a href="#letter" data-transition="slide">청첩장</a></li>
	        <li><a href="location" data-transition="slide" rel="external">위치</a></li>
	        <li><a href="gallery" data-transition="slide" rel="external">사진</a></li>
	        <li><a href="#comment" data-transition="slide" >about</a></li>
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
            <li><a href="location" data-transition="slide" rel="external">위치</a></li>
            <li><a href="gallery" data-transition="slide" rel="external">사진</a></li>
            <li><a href="#comment" data-transition="slide" >about</a></li>
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
<div data-role="page" id="gallery" data-title="Gallery" draggable="false">
    <div data-role="header" data-id="nh" data-position="fixed" >
        <div data-role="navbar">
            <ul>
            <li><a href="#home" data-transition="slide">홈</a></li>
            <li><a href="#letter" data-transition="slide" >청첩장</a></li>
            <li><a href="location" data-transition="slide" rel="external">위치</a></li>
            <li><a href="gallery" data-transition="slide" rel="external">사진</a></li>
            <li><a href="#comment" data-transition="slide" >about</a></li>
            </ul>
        </div>
    </div>
    <div data-role="content" id="images" draggable="false">
        <img id="currImage" draggable="false" unselectable="on" src="resources/img/image_1.jpg"/>
    </div>
    <div data-role="footer" data-position="fixed" data-id="nf">
    <h1>2013년 6월 16일(일) 오후 2:30</h1>
    <h1>강남고속터미널 (경부선) 5층/강남웨딩컨벤션 그랜드홀</h1>
    </div>
</div>
<!-- <div data-role="page" id="comment" data-title="Comment" style="width: 100%; height:100%; background-image: url(resources/img/image_21.jpg);">
 -->
<div data-role="page" id="comment" data-title="Comment" data-theme="c">
    <div data-role="header" data-id="nh" data-position="fixed" >
        <div data-role="navbar">
            <ul>
            <li><a href="#home" data-transition="slide">홈</a></li>
            <li><a href="#letter" data-transition="slide" >청첩장</a></li>
            <li><a href="location" data-transition="slide" rel="external">위치</a></li>
            <li><a href="gallery" data-transition="slide" rel="external">사진</a></li>
            <li><a href="#comment" data-transition="slide"  class="ui-btn-active ui-state-persist">about</a></li>
            </ul>
        </div>
    </div>
    <div data-role="content" id="images" >
        <div class="ui-body ui-body-e">
            <div data-role="collapsible" data-theme="b" data-content-theme="b" data-collapsed-icon="arrow-d" data-expanded-icon="arrow-u">
                <h3>결혼식</h3>
                <p>시간 : 6월 16일 일요일 2:30 분입니다. 현충일 다음주입니다.</p>
                <p>위치 : 강남고속터미널 경부선 건물 5층에 있습니다. 강남웨딩켄벤션 그랜드홀입니다.(홀 2개가 있음)</p>
                <p>찾기 : 지하철 강남고속터미널역에서 2번 출구로 오다보면 지하 1층에 경부선 엘리베이터가 있습니다. 에스컬레이터도 이용가능합니다.</p>
            </div><!-- /collapsible -->
            
            <div data-role="collapsible" data-theme="b" data-content-theme="b" data-collapsed-icon="arrow-d" data-expanded-icon="arrow-u">
                <h3>신혼여행</h3>
                <p>독일 3박, 프랑스 3박으로 6박 7일로 갑니다. ^^. </p>
                <p>휴가 일정상 길게 잡지 못했습니다.</p>
            </div><!-- /collapsible -->
            
            <div data-role="collapsible" data-theme="b" data-content-theme="b" data-collapsed-icon="arrow-d" data-expanded-icon="arrow-u">
                <h3>신혼집</h3>
                <p>2호선 상왕십리역 근처입니다. </p>
            </div>
            <div data-role="collapsible" data-theme="b" data-content-theme="b" data-collapsed-icon="arrow-d" data-expanded-icon="arrow-u">
                <h3>직장</h3>
                <p>이종민 : SK Planet 재직중입니다. 을지로에 있지만 올해말에 판교로 옮긴다고 합니다.</p>
                <p>이정옥 : 삼성 카드 재직중입니다. 선릉역에 있습니다.</p>
            </div>
            <div data-role="collapsible" data-theme="b" data-content-theme="b" data-collapsed-icon="arrow-d" data-expanded-icon="arrow-u">
                <h3>연락처</h3>
                <p>이종민 : 010-2728-1739</p>
                <p>이정옥 : 010-9522-0629</p>
            </div>
            <div data-role="collapsible" data-theme="b" data-content-theme="b" data-collapsed-icon="arrow-d" data-expanded-icon="arrow-u">
                <h3>모바일 청첩장</h3>
                <p>JQery mobile 공부 겸 한번 만들어봤습니다. ^^;;</p>
            </div>
        </div><!-- /themed container -->
    </div>
    <div data-role="footer" data-position="fixed" data-id="nf">
    <h1>2013년 6월 16일(일) 오후 2:30</h1>
    <h1>강남고속터미널 (경부선) 5층/강남웨딩컨벤션 그랜드홀</h1>
    </div>
</div>
 
 
</body>
</html>
