<cfcomponent>
    <cffunction name="getEvenOdd" access="remote">
        <cfif structKeyExists(form,'submit')>
            <cfif form.text1 gte "0">
                <cfset num = form.text1>
                <cfloop from="1" to="#num#" index="i">
                    <cfif  (#i# % 2) eq 0>
                        <cfset i="<font color=Green>#i#</font>">
                        <cfelse>
                            <cfset i="<font color=Blue>#i#</font>">
                    </cfif>
                    <cfoutput>
                        #i# 
                    </cfoutput>
                </cfloop>    
            <cfelse>
                Invalid number! Please enter valid number!
            </cfif>
        </cfif>
    </cffunction>
</cfcomponent>