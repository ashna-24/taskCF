<cfcomponent>
    <cffunction  name="getNumbers" access="remote" returnType="any">
        <cfargument  name="text" type="numeric" default="#form.textinput#">
        <cfswitch expression="#arguments.text#">
            <cfcase value="1">
                <cfset local.res="Ok">
                <cfreturn local.res>
            </cfcase>
            <cfcase value="2">
                <cfset local.res="Ok">
                <cfreturn local.res>
            </cfcase>
            <cfcase value="3">
                <cfset local.res="Fair">
                <cfreturn local.res>
            </cfcase>
            <cfcase value="4">
                <cfset local.res="Good">
                <cfreturn local.res>
            </cfcase>
            <cfcase value="5">
                <cfset local.res="Very Good">
                <cfreturn local.res>
            </cfcase>
            <cfdefaultcase>
                <cfset local.res="Invalid Number!">
                <cfreturn local.res>
            </cfdefaultcase> 
        </cfswitch>
    </cffunction>
</cfcomponent>