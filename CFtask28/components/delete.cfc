<cfcomponent>
	<cffunction name="deletepage" access="remote">
		<cfquery name="delete">
			DELETE 
            FROM pagesDtl
			WHERE pageid= <cfqueryparam value="#url.id#" cfsqltype="CF_SQL_VARCHAR">
		</cfquery>
		<cflocation url="..\admin.cfm">
	</cffunction>
</cfcomponent>