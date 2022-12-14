<cfcomponent>
    <cffunction  name="getSQL" access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfset variable=form.text1>
            <cfif variable lte 10>
                <cfquery datasource="employee" name="empQuery">
                    SELECT * 
                    FROM employee;
                </cfquery>
            <cfelse>
                Invalid input!    
            </cfif>
            <cfloop query="empQuery" startRow="#empQuery.variable#" endRow="#empQuery.variable#"> 
                <cfreturn "#empQuery.variable#">
                <cfreturn "#empQuery.FirstName#">
            </cfloop>
            <cfreturn "#empQuery.FirstName#"> <cfreturn "#empQuery.LastName#">
        </cfif>
    </cffunction>
</cfcomponent>
