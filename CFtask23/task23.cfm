<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/23rdtask.css">       
        <title>wufoo</title>
        <script src="js/task23.js"></script>
    </head>
    <body>
        <cfoutput>    
            <div class="main">
                <div class="mainform">
                    <div class="logo">
                        <img src="assets/wflogo.png" alt="Not found">
                    </div>
                    <div class="myform">
                        <div class="head">
                            <h4>Employment Application</h4>
                            <p>Infinity Box Inc.</p>
                        </div>                        
                        <div class="form">
                            <cfif structKeyExists(form, "submit")>
                                <cfinvoke method="getFormdata" component="components/23task">
                                <cfset structClear(form)>
                            </cfif>
                            <form action="" method="post" class="wfform" name="myform" onsubmit="return validateform()">
                                <div class="select wfformhover">
                                    <h3 class="textsize"> Which position are you applying for?<span class="red">*</span></h3>
                                    <select class="option" name="option" id="option">
                                        <option></option>
                                        <option>Interface Engineer</option>
                                        <option>Software Engineer</option>
                                        <option>Software Administrator</option>
                                        <option>Office Manager</option>
                                    </select>
                                    <span id="operror">This fiels id required,Pleast enter a value</span>
                                </div>

                                <div class="choose wfformhover">
                                    <h3 class="textsize"> Are you willing to relocate?<span class="red">*</span></h3>
                                    <input type="radio" value="yes" name="Choiceyes" id="Choiceyes" class="yes"><label>Yes</label><br>
                                    <input type="radio" value="no" name="Choiceno" id="Choiceyes" class="no"> <label>No</label>
                                </div>

                                <div class="date wfformhover">
                                    <h3 class="textsize"> When can you start?<span class="red">*</span></h3>
                                    <input type="date" name="date" id="date" class="start" onblur="validateform()">
                                    <span id="date_error">This fiels id required,Pleast enter a value</span>
                                </div>

                                <div class="portfolio wfformhover">
                                   <h3 class="textsize">Portfolio Web Site</h3> 
                                   <input type="url" placeholder="http://" name="url" id="url" class="url" onblur="validateform()">
                                   <span id="url_error">Please enter a valid url in http://website.com format.</span>
                                </div>

                                <div class="fileupload wfformhover">
                                   <h3 class="textsize">Attach a Copy of Your Resume</h3> 
                                   <input type="file" name="file" id="file">
                                   <p class="doc">Word or PDF Document Only</p>
                                </div>

                                <div class="salary wfformhover">
                                   <h3 class="textsize">Salary Requirements</h3> 
                                   <span>$</span>
                                   <span>
                                        <input type="text" name="text1" id="text1" class="dollar">
                                   </span>
                                   <span>.</span>
                                   <span>
                                        <input type="text" name="text2" id="text2" class="cents">
                                   </span>
                                   <div class="saltxt">
                                        <span class="saldollar">Dollar</span>
                                        <span>Cents</span>
                                   </div>
                                </div>

                                <div class="info">
                                    <p>Your Contact Information</p>
                                    <div class="name wfformhover">
                                        <h3 class="textsize">Name<span class="red">*</span></h3>
                                        <span>
                                            <input type="text" name="firstname" id="firstname" class="first" onblur="validateform()">
                                        </span>
                                        <span>
                                            <input type="text" name="lastname" id="lastname" class="last" onblur="validateform()">
                                        </span>
                                        <div class="saltxt">
                                            <span class="firsttxt">First</span>
                                            <span>Last</span>
                                        </div>
                                        <span id="name_error">This fiels id required,Pleast enter a value</span>
                                    </div>

                                    <div class="mail wfformhover">
                                        <h3 class="textsize">Email Address<span class="red">*</span></h3>
                                        <input type="email" name="mail" id="mail" class="url" onblur="validateform()">
                                        <span id="mail_error">This fiels id required,Pleast enter a value</span>
                                    </div>

                                    <div class="number wfformhover">
                                        <h3 class="textsize">Phone<span class="red">*</span></h3>
                                        <input type="number" name="phone" id="phone" class="option" onblur="validateform()">
                                        <span id="num_error">This fiels id required,Pleast enter a value</span>
                                    </div>
                                </div>
                                <input type="submit" value="Submit" id="submit" name="submit" class="submit">
                            </form>
                        </div>
                    </div>
                    <div class="bottom">
                        <p class="poweredby">Powered By</p>
                        <img src="assets/wufoo.png" class="image">
                        <p class="link">See how easy it is to <a href=" ">create a form</a></p>
                    </div>
                </div>
            </div>
        </cfoutput>
    </body>
</html>