<cfcomponent>
    <cffunction  name="getJSONTab" access="remote">
        <cfscript>
            queryTable= deserializeJSON(
                {"Name":"saravanan","Age":27,"LOCATION":"dubai"},
                {"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}
            );
            writeOutput(queryTable.Name & " ");
            writeDump("#queryTable.Name#")
        </cfscript>
    </cffunction>
</cfcomponent>