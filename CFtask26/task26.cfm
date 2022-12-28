<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/task25.css">       
        <title>Count</title>
    </head>
    <body>
        <cfinvoke method="getWordQuery" component="query" returnVariable="textCount">
        <cfset local.valueText="#textCount.Wordcount#">
        <cfset local.x=randRange(0, 255)>
        <cfset local.y=randRange(0, 255)>
        <cfset local.z=randRange(0, 255)>
        <cfoutput query="textCount">
            <cfset local.size="#textCount.Wordcount#"+14>
            <cfif local.valueText neq textCount.Wordcount>
   				<cfset local.x=randRange(0,255)>
  			    <cfset local.y=randRange(0,255)>
  				<cfset local.z=randRange(0,255)>
   			</cfif>
            <a href="##" style="font-size: #local.size#px; text-decoration:none; color:rgb(#local.x#,#local.y#,#local.z#)">
                #textCount.Word# (#textCount.Wordcount#)
            </a>
            <cfset local.valueText="#textCount.Wordcount#">
        </cfoutput>
    </body>
</html>