<cfcomponent>
    <cffunction  name="getNumbers" access="remote">
        <cfif structKeyExists(form, 'submit')>
            <cfswitch expression="#textinput#">
                <cfcase value="1">
                    Ok
                </cfcase>
                 <cfcase value="2">
                    Ok
                </cfcase>
                 <cfcase value="3">
                    Fair
                </cfcase>
                 <cfcase value="4">
                    Good
                </cfcase>
                 <cfcase value="5">
                    Very Good
                </cfcase>
                <cfdefaultcase>
                    Invalid Number!
                </cfdefaultcase> 
            </cfswitch>
       </cfif>
    </cffunction>
</cfcomponent>