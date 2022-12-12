<html>
    <head>
        <link rel="Stylesheet" href="css/21task.css">
    </head>
    <body>
        <div class="main">
            <form action="task21.cfm" method="post" name="myform" enctype="multipart/form-data" class="myform">
                Name:<input type="text" name="name"><br>
                MailID:<input type="text" name="mail"><br>
                Greeting:<input type="text" name="wish"><br>
                Please upload your greeting image!<br>
                <input type="file" name="imageUpload" id="upload" class="file"><br>
                <input type="submit" name="submit" class="button">
                <cfinvoke method="getWish" component="components/task21">
            </form>
        </div>
    </body>
</html>