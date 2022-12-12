<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task23.css">       
        <title></title>
    </head>
    <body>
        <cfoutput>
            <div class="main">
            <div class="mainform">
                <div class="logo">
                    <img src="assets/wflogo.png">
                </div>
                <div class="myform">
                    <div class="head">
                        <h4>Employment Application</h4>
                        <p>Infinity Box Inc.</p>
                    </div>
                    <div class="form">
                        <form action="" method="post" class="wfform">
                            <div class="select">
                                <p> Which position are you applying for?<span class="red">*</span></p>
                                <select>
                                    <option></option>
                                    <option>Interface Engineer</option>
                                    <option>Software Emgineer</option>
                                    <option>Software Administrator</option>
                                    <option>Office Manager</option>
                                </select>
                            </div>
                            <div class="choose">
                                <p> Are you willing to relocate?<span class="red">*</span></p>
                                <input type="radio" value="yes" name="yes" > Yes<br>
                                <input type="radio" value="no" name="no" checked> No
                            </div>
                            <div class="date">
                                <p> When can you start?<span class="red">*</span></p>
                                <span>
                                    <input type="text" class="text" name="text" maxlength="2">
                                    <label class="label">MM</label>
                                </span>
                                <span class="hash">/</span>
                                <span>
                                    <input type="text" class="text" name="text" maxlength="2">
                                    <label class="label">DD</label>
                                </span>
                                <span class="hash">/</span>
                                <span>
                                    <input type="text" class="text" name="text" maxlength="2">
                                    <label class="label">YYYY</label>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>\
            </div>
            </div>
        </cfoutput>
    </body>
</html>