<cfcomponent>
    <cffunction name="getQueryempQuery" access="remote" returnType="query">
        <cfquery datasource="querytab" name="empQuery">
            SELECT * 
            FROM employee;
        </cfquery>
        <cfreturn empQuery>
    </cffunction>
</cfcomponent>