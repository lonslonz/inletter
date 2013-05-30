<!DOCTYPE html>
<html>
<head>

    <title>Home</title>
    <link href="resources/css/bootstrap.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" type="text/css" href="resources/css/jsoneditor.css"/>
    <style type="text/css">
    <!--
        .toppad {
            position: relative;
            padding-top: 10px;
            padding-left: 40px;
        }
        .paddTop {
            position: relative;
            padding-top: 40px;
        }
        
		.bs-docs-example {
            position: relative;
            margin: 15px 0;
            padding: 39px 19px 14px;
            *padding-top: 19px;
            background-color: #fff;
            border: 1px solid #ddd;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
		}
    //-->
    </style>
    <script src="resources/js/jquery-1.9.0.js"></script>
    <script src="resources/js/bootstrap.js"></script>
    <script src="resources/js/jquery.jsoneditor.js"></script>
	<script>
    $(document).ready(function(){
        $("#login").click(function() {
        	inputId = $('#inputId').val();
        	inputPassword = $('#inputPassword').val();
        	console.log(inputId + " : " + inputPassword);
        	// api
        	// return
            });
        
        $("#importBtn").click(function() {
        	 window.close();
        	 window.open('importTable');
             
        });
        $("#importForm").submit(function() {
        	$('#result').html("<p></p>");
        	inputSource = $('#inputSource').val();
        	inputDest = $('#inputDest').val();
            inputOverwrite = $('#inputOverwrite').val();
            inputAppend = $('#inputAppend').val();
            
            $('#submit').button('loading');
            
            var urlStr = "/gluon_web/importTableCall?"  + "source=" + inputSource + "&dest=" + inputDest + "&overwrite=" + inputOverwrite + "&append=" + inputAppend;
            console.log("url : " + urlStr);
            var result = $.ajax({
                url: urlStr,
                dataType:"json",
                async: false});
                
            var resultJson = eval( "(" + result.responseText + ")");
            
            var test = {"a":1};
            var str = JSON.stringify(test);
            
            
            if(resultJson.returnCode) {
            	$('#result').html("<p>Success!!!</p>");
            } else {
            	$('#result').html("<p>Fail!!!</p>");
            }
            
            $('#result').append('<p>' + result.responseText + "</p>");
            $('#submit').button('reset');
            //console.log(result.responseText);
            
            return false;
            });

    });
	</script>
</head>

<body>
<div class="page-header">
    <h1 class="toppad">Import <small>copy data to hive table</small></h1>
</div>


<div class="paddTop">
	<div class="row">
	    <form id="importForm" class="form-horizontal">
		    <div class="control-group">
                <label class="control-label" for="inputSource">Source(ftp)</label>
			    <div class="controls">
                    <input type="text" class="input-xxlarge" id="inputSource" value="ftp://hbase:hbase@20.20.20.52//data1/gluon/lons/tb_member/" >
			    </div>
            </div>
			<div class="control-group">
			    <label class="control-label" for="inputDest">Destination(hive table)</label>
			    <div class="controls">
                    <input type="text" class="input-xxlarge" id="inputDest" value="hive:///cluster.gluon.tb_member" >
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputOverwrite">Overwrite</label>
                <div class="controls">
                    <input type="text" class="input-xxlarge" id="inputOverwrite" value="true">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputAppend">Append</label>
                <div class="controls">
                    <input type="text" class="input-xxlarge" id="inputAppend" value="false">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" id="submit" class="btn-primary btn-large" data-loading-text="importing...">Import</button>
			    </div>
		    </div>
	    </form>
	</div>
</div>
<div id = "result">

</div>
   
</body>
</html>
