<cfcomponent>
	<cffunction name="deletepage" access="remote">
    <cfdump  var="#url.id#">
		<cfquery name="delete" datasource="employee">
			DELETE 
            FROM pagesDtl
			WHERE pageid='#url.id#'
		</cfquery>
		<cflocation url="admin.cfm">
	</cffunction>
</cfcomponent>