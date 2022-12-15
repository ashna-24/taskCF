<cfcomponent>
    <cffunction  name="getNumbers" access="remote">
        <cfargument  name="text" type="any" default="#form.textinput#">
        <cfif structKeyExists(form, 'submit')>
            <cfif arguments.text eq "1">
                <cfreturn "Ok"/>
                <cfelseif arguments.text eq "2">
                    <cfreturn "Ok"/> 
                <cfelseif arguments.text eq "3">
                    <cfreturn "Fair"/>
                <cfelseif arguments.text eq "4">
                    <cfreturn "Good"/>
                <cfelseif arguments.text eq "5">
                    <cfreturn "Very Good"/>
                <cfelse>
                    <cfreturn false/>
            </cfif>
       </cfif>
    </cffunction>
</cfcomponent>