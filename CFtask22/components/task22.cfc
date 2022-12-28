<cfcomponent>
    <cffunction  name="getJSONTab" access="remote">
        <cfset queryTable= serializeJSON([
            {"Name":"Saravanan","Age":27,"LOCATION":"Dubai"},
            {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}
        ])>
        <cfset jsonDeserialized=deserializeJSON(queryTable)>
        <cfreturn "#jsonDeserialized#">
    </cffunction>
</cfcomponent>