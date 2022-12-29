<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task5.css">       
        <title>Submit</title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
                <form action="" method="post" autocomplete="off" name="myform">
                    Enter Child DOB<input type="date" name="date" id="date">
                    Enter Mother's DOB<input type="date" name="mother" id="mother">
                    <input type="submit" name="submit" value="Submit" id="submit">
                </form>
            </div>
            <cfif structKeyExists(form, "submit")>
                <cfinvoke  method="getAge" component="components/task5" returnVariable="ageStruct">
                Users age is: "#ageStruct.UsersAge#" <br>
                At age "#ageStruct.MotherDeliveredHim#" his mother delivered him. <br>
                "#ageStruct.childBirthday#" remaining for child's birthday <br>
                "#ageStruct.MotherBirthday#" remaining for Mother's birthday.
                <cfset structClear(form)>
            </cfif>
        </cfoutput>
    </body>
</html>