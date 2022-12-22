<cfcomponent>
    <cffunction  name="getSQL" access="remote">
        <cfargument  name="keyText" type="numeric" default="#form.text1#">
        <cfif structKeyExists(form, "submit")>
            <cfset variable=arguments.keyText>
            <cfif variable lte 10>
                <cfquery datasource="querytab" name="empQuery">
                    SELECT * 
                    FROM employee;
                </cfquery>
            <cfelse>
                Invalid input!    
            </cfif>
            <cfloop query="empQuery" startRow="#variable#" endRow="#variable#"> 
                <cfoutput>
                    Name is #empQuery.FirstName# #empQuery.LastName#<br>
                </cfoutput>
            </cfloop>
            <cfoutput query="empQuery">
                    #empQuery.FirstName# #empQuery.LastName#<br>
            </cfoutput>
        </cfif>
    </cffunction>
</cfcomponent>
