<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task14.css">      
    </head>
    <body>
        <cfoutput>   
            <div class="mainBody">
                <form action="task14.cfm" method="post" enctype="multipart/form-data">            
                    Image name<input type="text" name="name" class="text name"><br>
                    Description<textarea class="text" rows="4" cols="50" name="description"></textarea><br>
                    Select file<input type="file" name="file" class="file"><br>
                    The image should not greater than 1 MB<br>
                    <input type="submit" value="submit" class="text file" name="submit"> 
                </form>
            </div>
            <cfif structKeyExists(form,'submit')>
                <cfinvoke  method="textField" component="compoents/task14"> 
                <a href="index14.cfm?name=#session.name#&stored name=#session.location#&size=#session.sizeKB#&description=#session.description#"> 
                    <cfimage source="D:\ColdFusion\cfusion\wwwroot\CFtasks\CFtask14\assets\fileresize\#session.location#" name="myImage" action="writeToBrowser"/></a>   
                <cfset structClear("#form#")> 
            </cfif>
        </cfoutput>
    </body>
</html>