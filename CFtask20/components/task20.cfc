<cfcomponent>
    <cffunction name="makeRandomString" returnType="string" output="false">
	    <cfset local.chars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmopqrstuvwxyz">
	    <cfset local.length = randRange(6,6)>
	    <cfset local.result = "">
        <cfloop from="1" to="#local.length#" index="i">
            <cfset local.char= mid(local.chars, randRange(1, len(local.chars)), 1)>
            <cfset local.result&=local.char>
        </cfloop>
	    <cfreturn local.result>
    </cffunction>
    <cffunction name="getCaptcha" access="remote">
        <cfargument name="captchaform" type="any" default="#form.captcha#">
        <cfargument name="captchatextform" type="any" default="#form.captchatext#">
        <cfset local.variable = arguments.captchaform>
        <cfset local.captch = makeRandomString()>
        <cfset local.hidvar = arguments.captchatextform>
        <cfif local.hidvar eq local.variable>
            <cfreturn "Email Address successfully subscribe our newsletter!">
        <cfelse>
            <cfreturn "Invalid captcha!">
        </cfif>
    </cffunction>
</cfcomponent>