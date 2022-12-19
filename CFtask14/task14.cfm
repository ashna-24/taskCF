<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task14.css">      
    </head>
    <body>
        <cfoutput>   
            <cfif structKeyExists(form,'submit')>
                <cfinvoke  method="textField" component="compoents/task14" returnVariable="session.location"> 
            </cfif> 
            <cfset structClear("#form#")> 
            <div class="mainBody">
                <form action="task14.cfm" method="post" enctype="multipart/form-data">            
                    <label>Image name</label><br>
                    <input type="text" name="name" class="text"><br>
                    <label>description</label><br>
                    <textarea class="text" rows="4" cols="50" name="description"></textarea><br>
                    <label>Select file</label><br>
                    <input type="file"  name="file"><br>
                    The image should not greater than 1 MB<br>
                    <input type="submit" value="submit" class="text" name="submit">
                    <a href="index14.cfm"> <cfimage source="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask14\assets\fileresize\#session.location#" name="myImage" action="writeToBrowser"></a>    
                    <br> 
                </form>
                <cfreturn "#session.location#">
                <cfreturn "#session.sizeKB#">
                <cfreturn "#session.name#">
                <cfreturn "#session.description#">    
            </div>
        </cfoutput>
    </body>
</html>