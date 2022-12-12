<cfcomponent>
    <cffunction name="divisible" access="remote">
        <cfif structKeyExists(form, 'submit')>
            <cfset data = form.textinput>
            <cfset arr = rematch("[\d]+",data)>
            <cfloop array="#arr#" index="i">
                <cfif (i % 3) eq 0>
                    <cfoutput>
                        #i#
                    </cfoutput>
                    <cfcontinue>                    
                </cfif>                                
            </cfloop>
       </cfif>
    </cffunction>
</cfcomponent>