<cfcomponent>
    <cffunction  name="getNumbers" access="remote">
        <cfif structKeyExists(form, 'submit')>
            <cfif form.textinput eq "1">
                <cfreturn "Ok"/>
                <cfelseif form.textinput eq "2">
                    <cfreturn "Ok"/> 
                <cfelseif form.textinput eq "3">
                    <cfreturn "Fair"/>
                <cfelseif form.textinput eq "4">
                    <cfreturn "Good"/>
                <cfelseif form.textinput eq "5">
                    <cfreturn "Very Good"/>
                <cfelse>
                    <cfreturn false/>
            </cfif>
       </cfif>
    </cffunction>
</cfcomponent>