<cfcomponent>
    <cffunction name="getStruct" access="remote">
        <cfset session.myStruct=StructNew()>
        <cfif structKeyExists(form,'submit')>            
            <cfapplication name="GetStruct" sessionmanagement="Yes" sessiontimeout=#CreateTimeSpan(0,0,45,0)#>   
            <cflock  timeout="45" scope="Session" type="Readonly">
            <cfset v=form.text1>
            <cfif structKeyExists(session.myStruct,"#v#")>
                <cfreturn "#v#">
                <cfelse>
                    <cfset session.myStruct[form.text1]=form.text2>
                    <cfdump var="#session.myStruct#"> 
                </cfif>
            </cflock>                
        </cfif>
    </cffunction>
</cfcomponent>