<cfcomponent>
    <cffunction name="getOutput"  access="remote" returnType="struct">
        <cfset local.result=structNew()>
        <cfset local.res1 = mulitiply(1,2)>
        <cfset local.result.result1="#local.res1#">
        <cfset local.res2 = mulitiply(1,2,3)>
        <cfset local.result.result2="#local.res2#">
        <cfset local.res3 = mulitiply(1,2,3,4)>
        <cfset local.result.result3="#local.res3#">
        <cfreturn local.result>
    </cffunction>
    <cffunction name="mulitiply">
        <cfargument name="w" required="yes">
        <cfargument name="x" required="yes">
        <cfargument name="y" required="yes" default="1">
        <cfargument name="z" required="yes" default="1">
        <cfreturn arguments.w*arguments.x*arguments.y*arguments.z>
    </cffunction>
</cfcomponent>
