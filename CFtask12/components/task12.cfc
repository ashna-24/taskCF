<cfcomponent>
    <cffunction  name="getSQL" access="remote" returnType="any">
        <cfargument  name="keyText" type="numeric" default="#form.text1#">
        <cfset local.variable=arguments.keyText>
        <cfif local.variable lte 10>
            <cfquery datasource="querytab" name="empQuery">
                SELECT * 
                FROM employee;
            </cfquery>
            <cfloop query="empQuery" startRow="#local.variable#" endRow="#local.variable#"> 
                <cfset local.firstName="#empQuery.FirstName#">
            </cfloop>
            <cfreturn local.firstName>
        <cfelse>
            <cflocation url="./task12.cfc">   
        </cfif>
    </cffunction>
</cfcomponent>
