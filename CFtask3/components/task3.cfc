<cfcomponent>
    <cffunction name="divisible" access="remote" returnType="struct">
        <cfargument  name="field" type="any" default="#form.textinput#">
        <cfset local.data = arguments.field>
        <cfset local.arr = rematch("[\d]+",data)>
        <cfset local.struct=structNew()>
            <cfloop array="#local.arr#" index="i">
                <!--- <cfif (i % 3) eq 0> --->
                    <cfset structInsert(local.struct, "#i#", "#local.arr#")>
                    <!--- <cfset struct=structNew()>
                    <cfset struct.value="#i#"> --->
                    <cfcontinue>
                <!--- </cfif> --->                   
            </cfloop>
    </cffunction>
</cfcomponent>