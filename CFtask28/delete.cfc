<cfcomponent>
	<cffunction name="deletepage" access="remote">
    <cfdump  var="#url.id#">
		<cfquery name="delete" datasource="employee">
			DELETE 
            FROM pagesDtl
			WHERE pageid= <cfqueryparam value="#url.id#" cfsqltype="CF_SQL_VARCHAR">
		</cfquery>
		<cflocation url="admin.cfm">
	</cffunction>
</cfcomponent>