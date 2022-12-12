<cfcomponent>
    <cffunction  name="getArrayChar" access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfset textvar= form.text1>
            <cfset count=0>
            <cfset array= ["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]>
            <cfloop from="1" to="#arrayLen(array)#" index="i">
                <cfif #textvar# eq #array[i]#>
                    <cfset count = #count# + 1>
                </cfif>
            </cfloop>
            <cfoutput>
                "#textvar#" key word found in #count# times!
            </cfoutput>
        </cfif>
    </cffunction>
</cfcomponent>