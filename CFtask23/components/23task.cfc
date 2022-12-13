<cfcomponent>
    <cffunction  name="getFormdata" access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfquery name="form" datasource="wufoo">
                insert into form values('#form.option#',
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