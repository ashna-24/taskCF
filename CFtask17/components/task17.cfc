<cfcomponent>
    <cffunction name="getEvenOdd" access="remote">
        <cfargument  name="text" type="any" default="#form.text1#">
        <cfif arguments.text gte "0">
            <cfset num = arguments.text>
            <cfloop from="1" to="#num#" index="i">
                <cfif  (i % 2) eq 0>
                    <cfset i="<font color=Green>#i#</font>">
                    <cfelse>
                        <cfset i="<font color=Blue>#i#</font>">
                </cfif>
                <cfreturn "#i#"> 
            </cfloop>    
        <cfelse>
            Invalid number! Please enter valid number!
        </cfif>
    </cffunction>
</cfcomponent>