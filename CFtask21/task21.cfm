<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task21.css">       
        <title></title>
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