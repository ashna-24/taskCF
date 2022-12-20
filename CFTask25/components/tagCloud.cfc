<cfcomponent>
    <cffunction name="getText" output="false" returntype="tagCloud">
        <cfargument name="mytext" type="string">
        <cfset variables.mytext = arguments.mytext>
        <cfreturn this>
    </cffunction> 
    <cffunction  name="getWordString" access="remote">
    <cfdump  var="#form#">
        <cfset textData="#mytext#">
        <cfset keyText=0>
        <cfloop list="#textData#" delimiters=" .;" index="i">
            <cfset keyText= keyText+1>
            <cfset ValueText = "#i#">
            <cfif not isNumeric(i)>
                <cfset struct=structNew("Ordered")>
                <cfif not isDefined("struct")>
                    <cfset textvar=structInsert(struct, "#keyText#", "#valueText#")>
                </cfif>
                <cfset textvar=structInsert(struct, "#keyText#", "#valueText#")>
            </cfif>
        </cfloop>
        <cfreturn struct>
    </cffunction>
</cfcomponent>