<cfcomponent>
    <cffunction name="getStruct" access="remote" returnType="struct">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfargument  name="valueText" type="string" default="#form.text2#">
        <cfset local.myStruct=StructNew()>
        <cfset local.myStruct[arguments.keyText]=arguments.valueText>
        <cfreturn local.myStruct>
    </cffunction>
</cfcomponent>