<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/21task.css">       
        <title></title>
    </head>
    <body>
        <div class="main">
            <form action="task21.cfm" method="post" name="myform" enctype="multipart/form-data" class="myform">
                Name:<input type="text" name="textName" id="textName"><br>
                MailID:<input type="text" name="mail" id="mail"><br>
                Greeting:<input type="text" name="wish" id="wish"><br>
                Please upload your greeting image!<br>
                <input type="file" name="imageUpload" id="upload" class="file"><br>
                <input type="submit" name="submit" class="button" value="Submit">
            </form>
            <cfif structKeyExists(form, "submit")>
                <cfinvoke method="getWish" component="components/task21">
            </cfif>
            <cfset structClear("#form#")>
        </div>
    </body>
</html>