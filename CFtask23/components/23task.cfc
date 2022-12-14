<cfcomponent>
    <cffunction  name="getFormdata" access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfquery name="form" datasource="wufoo">
                INSERT INTO form VALUES('#form.option#',
                                        '#form.date#',
                                        '#form.url#',
                                        '#form.firstname#',
                                        '#form.lastname#',
                                        '#form.mail#',
                                        '#form.phone#');
            </cfquery>
        </cfif>
    </cffunction>
</cfcomponent>