<cfcomponent>
    <cffunction name="multiply">
        <cfargument name="w" required="yes">
        <cfargument name="x" required="yes">
        <cfargument name="y" required="yes" default="1">
        <cfargument name="z" required="yes" default="1">
        <cfreturn arguments.w*arguments.x*arguments.y*arguments.z>
    </cffunction>
</cfcomponent>
