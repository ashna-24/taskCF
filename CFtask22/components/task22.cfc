<cfcomponent>
    <cffunction  name="getJSONTab" access="remote">
        <cfscript>
            queryTable= serializeJSON([
                {"Name":"saravanan","Age":27,"LOCATION":"dubai"},
                {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}
            ]);
            jsonDeserialized=deserializeJSON("#queryTable#");
        </cfscript>
        <cfreturn "#jsonDeserialized#">
    </cffunction>
</cfcomponent>