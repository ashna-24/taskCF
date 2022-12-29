<cfcomponent>
    <cffunction name="getText" output="false" returntype="tagCloud">
        <cfargument name="mytext" type="string">
        <cfset variables.mytext = arguments.mytext>
        <cfreturn this>
    </cffunction> 
    <cffunction  name="getWordString" access="remote">
        <cfset local.textData="#mytext#">
        <cfset local.keyText=0>
        <cfloop list="#local.textData#" delimiters=" .;" index="i">
            <cfset local.keyText= local.keyText+1>
            <cfset local.ValueText = "#i#">
            <cfif not isNumeric(i)>
                <cfif structKeyExists(local,"struct")>
                    <cfset local.textvar=structInsert(struct, "#local.keyText#", "#local.valueText#")>
                <cfelse>
                    <cfset local.struct=structNew("Ordered")>
                    <cfset local.textvar=structInsert(struct, "#local.keyText#", "#local.valueText#")>
                </cfif>
            </cfif>
        </cfloop>
        <cfreturn local.struct>
    </cffunction>
</cfcomponent>