<cfcomponent>
    <cffunction  name="getAge" access="remote">
        <cfif structKeyExists(form, 'submit')>
            <cfset child= form.date>
            <cfset Mom=form.mother>
            <cfif child lte Mom>
                Invalid! 
            <cfelse>
                <cfset datefrmt= dateFormat("#now()#", "yyyy")> 
                <cfset Userfrmt=dateFormat("#child#", "YYYY")>
                <cfset Momfrmt= dateFormat("#mother#", "yyyy")>
                <cfset m = dateFormat("#child#", "mm")>
                <cfset d = dateFormat("#child#", "dd")>
                <cfset mM = dateFormat("#mother#", "mm")>
                <cfset dM = dateFormat("#mother#", "dd")>
                <cfset nM = dateFormat("#now()#", "mm")>
                <cfset nD = dateFormat("#now()#", "dd")>
                <cfset age = #datefrmt# - #Userfrmt#>
                <cfset MomAge=  #Userfrmt# - #Momfrmt#>
                <cfif m eq nM && nD lte d || m gt nM>
                    <cfset dateUp = #datefrmt#>
                    <cfelse>
                        <cfset dateUp = #datefrmt# + 1>
                </cfif>
                <cfif mM eq nM && nD lte dM || mM gt nM>
                    <cfset dateUpM = #datefrmt#>
                    <cfelse>
                        <cfset dateUpM = #datefrmt# + 1>
                </cfif>
                <cfset day = createDate("#dateUp#", "#m#" , "#d#")>
                <cfset dayM = createDate("#dateUpM#", "#mM#" , "#dM#")>
                <cfset daystill=dateDiff("d", now(), day)>
                <cfset daystillM=dateDiff("d", now(), dayM)>
            </cfif>
            <cfreturn "#age#">
            <cfreturn "#MomAge#">
            <cfreturn "#daystill#">
            <cfreturn "#daystillM#">
        </cfif>
    </cffunction>
</cfcomponent>