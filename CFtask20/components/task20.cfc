<cfcomponent>
    <cffunction name="makeRandomString" returnType="string" output="false">
	    <cfset var chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmopqrstuvwxyz">
	    <cfset var length = randRange(6,6)>
	    <cfset var result = "">
	    <cfset var i = "">
	    <cfset var char = "">
	    <cfscript>
	        for(i=1; i <= length; i++) {
		        char = mid(chars, randRange(1, len(chars)),1);
		        result&=char;
	        }
	    </cfscript>	
	    <cfreturn result>
    </cffunction>
    <cffunction name="getCaptcha" access="remote">
        <cfargument  name="captchaform" type="any" default="#form.captcha#">
        <cfargument  name="captchatextform" type="any" default="#form.captchatext#">
        <cfset variable = arguments.captchaform>
        <cfset captch = makeRandomString()>
        <cfset hidvar = arguments.captchatextform>
        <cfif hidvar eq variable>
            <cfreturn "Email Address successfully subscribe our newsletter!">
        <cfelse>
            <cfreturn "Invalid captcha!">
        </cfif>
    </cffunction>
</cfcomponent>