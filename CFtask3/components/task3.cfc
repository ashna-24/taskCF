<cfcomponent>
    <cffunction name="divisible" access="remote" returnType="array">
        <cfargument  name="field" type="any" default="#form.textinput#">
        <cfset local.data = arguments.field>
        <cfset local.arrayData= arrayNew(1)>
        <cfloop list="#local.data#" delimiters=" ," index="i">
            <cfif isNumeric(i)>
                <cfif (i % 3) eq 0>
                    <cfset arrayAppend(local.arrayData, i)>
                    <cfcontinue>
                </cfif>   
            </cfif>               
        </cfloop>
        <cfreturn local.arrayData>
    </cffunction>
</cfcomponent>