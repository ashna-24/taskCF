<html>
    <head>
        <link rel="stylesheet" href="css/task20.css">
    </head>
    <body>
        <cfoutput>
            <cfinvoke method="makeRandomString" component="components/task20" returnVariable="captch">
            <div class="main">
                <form action="components/task20.cfc?method=getCaptcha" method="post" name="myform" class="forminput">
                    Enter your mail ID:  <input type="mail" name="mail" class="field"><br>
                    <cfimage action="captcha" text="#captch#" difficulty="low" fontSize="18" overwrite="yes" class="image"><br>
                    Enter captcha:  <input type="text" name="captcha" class="field2"><br>
                    <input type="hidden" name="captchatext" value="#captch#">
                    <input type="submit" value="Submit" class="button" id="submit" name="submit">
                </form>
            </div>
        </cfoutput>
    </body>
</html>