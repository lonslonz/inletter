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
        
        $("#exportForm").submit(function() {
            $('#result').html("<p></p>");
            inputSource = $('#inputSource').val();
            inputDest = $('#inputDest').val();
            inputOverwrite = $('#inputOverwrite').val();
            inputMerge = $('#inputMerge').val();
            inputFileName = $('#inputFileName').val();
            
            $('#submit').button('loading');
            
            var urlStr = "/gluon_web/exportTableCall?"  + "source=" + inputSource + "&dest=" + inputDest + 
                         "&overwrite=" + inputOverwrite + "&merge=" + inputMerge + "&fileName=" + inputFileName;
            console.log("url : " + urlStr);
            var result = $.ajax({
                url: urlStr,
                dataType:"json",
                async: false});
                
            var resultJson = eval( "(" + result.responseText + ")");
            
            var test = {"a":1};
            //var str = JSON.stringify(test);
            
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
    <h1 class="toppad">Export <small>copy data to hive table</small></h1>
</div>


<div class="paddTop">
    <div class="row">
        <form id="exportForm" class="form-horizontal">
            <div class="control-group">
                <label class="control-label" for="inputSource">Source(ftp)</label>
                <div class="controls">
                    <input type="text" class="input-xxlarge" id="inputSource" value="hive:///cluster.gluon.tb_member" >
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputDest">Destination(hive table)</label>
                <div class="controls">
                    <input type="text" class="input-xxlarge" id="inputDest" value="ftp://hbase:hbase@20.20.20.52//data1/gluon/dump/[TODAY:yyyyMMdd]" >
                </div>
            </div>
            
            <div class="control-group">
                <label class="control-label" for="inputFileName">FileName</label>
                <div class="controls">
                    <input type="text" class="input-xxlarge" id="inputFileName" value="[TABLE].[TODAY -1:yyyyMMdd].dump">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputOverwrite">Overwrite</label>
                <div class="controls">
                    <input type="text" class="input-xxlarge" id="inputOverwrite" value="true">
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="inputMerge">Merge</label>
                <div class="controls">
                    <input type="text" class="input-xxlarge" id="inputMerge" value="true">
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <button type="submit" id="submit" class="btn-primary btn-large" data-loading-text="exporting...">Export</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div id = "result">

</div>
   
</body>
</html>
