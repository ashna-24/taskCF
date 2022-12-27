<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/20task.css">       
        <title>Captcha</title>
        <script src="js/20thtask.js"></script>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <cfinvoke method="makeRandomString" component="components/task20" returnVariable="captch">
                <form action="components/task20.cfc?method=getCaptcha" method="post" name="myform" class="forminput" onsubmit="return validateform()">
                    Enter your mail ID:  
                    <input type="mail" name="mail" id="mail" class="field" onblur="validateform()">
                    <span id="mail_error">This field is required</span><br>
                    <cfimage action="captcha" text="#captch#" difficulty="low" fontSize="18" overwrite="yes" class="image"><br>
                    Enter captcha:  
                    <input type="text" name="captcha" id="captcha" class="field2" onblur="validateform()">
                    <span id="captch_error">This field is required</span><br>
                    <input type="hidden" name="captchatext" value="#captch#">
                    <input type="submit" value="Submit" class="button" id="submit" name="submit">
                </form>
            </div>
            <cfif structKeyExists(form, 'submit')>
               <cfset structClear(form)>
            </cfif>
        </cfoutput>
    </body>
</html>