<cfcomponent>
    <cffunction name="getEvenOdd" access="remote" returntype="array">
        <cfargument  name="text" type="any" default="#form.text1#">
        <cfif arguments.text gte "0">
            <cfset local.num = arguments.text>
            <cfset local.myArray=ArrayNew(1)>
            <cfloop from="1" to="#local.num#" index="i">
                <cfif (i % 2) eq 0>
                    <cfset i="<font color=Green>#i#</font>">
                <cfelse>
                    <cfset i="<font color=Blue>#i#</font>">
                </cfif> 
                <cfset arrayAppend(local.myArray, i)>
            </cfloop>  
            <cfreturn local.myArray>
        <cfelse>
            <cflocation url="./task17.cfm">
        </cfif>
    </cffunction>
</cfcomponent>