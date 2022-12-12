<cfcomponent>
    <cffunction name="getStruct" access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfscript>
                Struct=StructNew();
                struct[form.text1]=form.text2;
            </cfscript>
            <cfdump  var="#Struct#">
        </cfif>
    </cffunction>
</cfcomponent>