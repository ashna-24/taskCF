<cfcomponent>
    <cffunction name="divisible" access="remote">
        <cfargument  name="field" type="any" default="#form.textinput#">
        <cfif structKeyExists(form, 'submit')>
            <cfset data = arguments.field>
            <cfset arr = rematch("[\d]+",data)>
            <cfloop array="#arr#" index="i">
                <cfif (i % 3) eq 0>
                    <cfoutput>#i#</cfoutput>
                    <cfcontinue>
                </cfif>                   
            </cfloop>
       </cfif>
    </cffunction>
</cfcomponent>