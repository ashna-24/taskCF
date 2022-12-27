<cfcomponent>
    <cffunction  name="getNumbers" access="remote">
        <cfargument  name="text" type="numeric" default="#form.textinput#">
        <cfswitch expression="#arguments.text#">
            <cfcase value="1">
                <cfreturn "Ok">
            </cfcase>
                <cfcase value="2">
                    <cfreturn "Ok">
            </cfcase>
                <cfcase value="3">
                    <cfreturn "Fair">
            </cfcase>
                <cfcase value="4">
                    <cfreturn "Good">
            </cfcase>
                <cfcase value="5">
                    <cfreturn "Very Good">
            </cfcase>
            <cfdefaultcase>
                    <cfreturn "Invalid Number!">
            </cfdefaultcase> 
        </cfswitch>
    </cffunction>
</cfcomponent>