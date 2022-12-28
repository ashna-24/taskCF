<cfcomponent>
    <cffunction name="divisible" access="remote" returnType="array">
        <cfargument  name="field" type="any" default="#form.textinput#">
        <cfset local.data = arguments.field>
        <cfset local.array = rematch("[\d]+",data)>
        <cfset local.arrayData= arrayNew(1)>
        <cfloop array="#local.array#" index="i">
            <cfif (i % 3) eq 0>
                <cfset arrayAppend(local.arrayData, i)>
                <cfcontinue>
            </cfif>                   
        </cfloop>
        <cfreturn local.arrayData>
    </cffunction>
</cfcomponent>