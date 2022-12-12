<cfcomponent>
    <cffunction  name="getSQL" access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfset variable=form.text1>
            <cfif #variable# lte 10>
                <cfquery datasource="employee" name="empQuery">
                    select * from employee;
                </cfquery>
                <cfelse>
                    Invalid input!    
            </cfif>
            <cfloop query="empQuery" startRow="#variable#" endRow="#variable#">
                <cfoutput> 
                    Name in position #variable# is #FirstName# <br><br>
                </cfoutput>
            </cfloop>
            <cfoutput query="empQuery">
                    #FirstName# #LastName#<br>
            </cfoutput>
        </cfif>
    </cffunction>
</cfcomponent>
