<cfcomponent>
    <cffunction  name="getAge" access="remote" returnType="struct">
        <cfargument name="childDate" type="any" default="#form.date#">
        <cfargument  name="MomDate" type="any" default="#form.mother#"> 
        <cfset local.child= arguments.childDate>
        <cfset local.Mom= arguments.MomDate>
        <cfif local.child lte local.Mom>
            Invalid! 
        <cfelse>
            <cfset local.datefrmt= dateFormat(now(), "yyyy")> 
            <cfset local.Userfrmt=dateFormat(local.child, "YYYY")>
            <cfset local.Momfrmt= dateFormat(local.Mom, "yyyy")>
            <cfset local.m = dateFormat(local.child, "mm")>
            <cfset local.d = dateFormat(local.child, "dd")>
            <cfset local.mM = dateFormat(local.Mom, "mm")>
            <cfset local.dM = dateFormat(local.Mom, "dd")>
            <cfset local.nM = dateFormat(now(), "mm")>
            <cfset local.nD = dateFormat(now(), "dd")>
            <cfset local.age = local.datefrmt - local.Userfrmt>
            <cfset local.MomAge=  local.Userfrmt - local.Momfrmt>
            <cfif local.m eq local.nM && local.nD lte local.d || local.m gt local.nM>
                <cfset local.dateUp = local.datefrmt>
            <cfelse>
                <cfset local.dateUp = local.datefrmt + 1>
            </cfif>
            <cfif local.mM eq local.nM && local.nD lte local.dM || local.mM gt local.nM>
                <cfset local.dateUpM = local.datefrmt>
            <cfelse>
                <cfset local.dateUpM = local.datefrmt + 1>
            </cfif>
            <cfset local.day = createDate(local.dateUp, local.m , local.d)>
            <cfset local.dayM = createDate(local.dateUpM, local.mM , local.dM)>
            <cfset local.daystill=dateDiff("d", now(), local.day)>
            <cfset local.daystillM=dateDiff("d", now(), local.dayM)>
        </cfif>
        <cfset local.ageStruct=structNew()>
        <cfset local.ageStruct.UsersAge = local.age>
        <cfset local.ageStruct.MotherDeliveredHim = local.MomAge>
        <cfset local.ageStruct.childBirthday = local.daystill>
        <cfset local.ageStruct.MotherBirthday = local.daystillM>
        <cfreturn local.ageStruct>
    </cffunction>
</cfcomponent>