<cfcomponent>
    <cffunction  name="getAge" access="remote" returnType="struct">
        <cfargument name="childDate" type="any" default="#form.date#">
        <cfargument  name="MomDate" type="any" default="#form.mother#"> 
        <cfset child= arguments.childDate>
        <cfset Mom= arguments.MomDate>
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
            <cfset age = datefrmt - Userfrmt>
            <cfset MomAge=  Userfrmt - Momfrmt>
            <cfif m eq nM && nD lte d || m gt nM>
                <cfset dateUp = datefrmt>
            <cfelse>
                <cfset dateUp = datefrmt + 1>
            </cfif>
            <cfif mM eq nM && nD lte dM || mM gt nM>
                <cfset dateUpM = datefrmt>
            <cfelse>
                <cfset dateUpM = datefrmt + 1>
            </cfif>
            <cfset day = createDate("#dateUp#", "#m#" , "#d#")>
            <cfset dayM = createDate("#dateUpM#", "#mM#" , "#dM#")>
            <cfset daystill=dateDiff("d", now(), day)>
            <cfset daystillM=dateDiff("d", now(), dayM)>
        </cfif>
        <cfset ageStruct=structNew()>
        <cfset ageStruct.UsersAge = "#age#">
        <cfset ageStruct.MotherDeliveredHim = "#MomAge#">
        <cfset ageStruct.childBirthday = "#daystill#">
        <cfset ageStruct.MotherBirthday = "#daystillM#">
        <cfreturn ageStruct>
    </cffunction>
</cfcomponent>