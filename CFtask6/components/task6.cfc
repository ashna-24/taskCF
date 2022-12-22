<cfcomponent>
    <cffunction name="getStruct" access="remote">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfargument  name="valueText" type="string" default="#form.text2#">
        <cfset myStruct=StructNew()>
        <cfset myStruct[arguments.keyText]=arguments.valueText>
        <cfreturn myStruct>
    </cffunction>
</cfcomponent>