<cfcomponent>
    <cffunction name="getOutput"  access="remote">
        <cfset multiplyValues = createObject("component","components/task15")>
        <cffunction name="mulitiply">
            <cfargument name="w" required="yes">
            <cfargument name="x" required="yes">
            <cfargument name="y" required="yes" default="1">
            <cfargument name="z" required="yes" default="1">
            <cfreturn w*x*y*z>
        </cffunction>
        <cfset res = mulitiply(1,2)>
        <cfdump  var="#res#">
        <cfset res = mulitiply(1,2,3)>
        <cfdump  var="#res#">
        <cfset res = mulitiply(1,2,3,4)>
        <cfdump  var="#res#">
    </cffunction>
</cfcomponent>
