<cfcomponent>
    <cffunction  name="getJSONTab" access="remote">
        <cfset queryTable= serializeJSON([
            {"Name":"saravanan","Age":27,"LOCATION":"dubai"},
            {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}
        ])>
        <cfset jsonDeserialized=deserializeJSON("#queryTable#")>
        <cfreturn "#jsonDeserialized#">
    </cffunction>
</cfcomponent>