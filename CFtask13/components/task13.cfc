<cfcomponent>
    <cffunction  name="getArrayChar" access="remote">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfset textvar= arguments.keyText>
        <cfset count=0>
        <cfset array= ["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]>
        <cfloop from="1" to="#arrayLen(array)#" index="i">
            <cfif textvar eq array[i]>
                <cfset count = #count# + 1>
            </cfif>
        </cfloop>
        <cfreturn "#count#">
    </cffunction>
</cfcomponent>