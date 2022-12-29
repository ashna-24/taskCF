<cfcomponent>
    <cffunction  name="getArrayChar" access="remote" returnType="array">
        <cfargument  name="keyText" type="string" default="#form.text1#">
        <cfset local.textvar= arguments.keyText>
        <cfset local.count = 0>
        <cfset local.array= ["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]>
        <cfloop from="1" to= #arrayLen(local.array)# index="i">
            <cfif local.textvar eq local.array[i]>
                <cfset local.count = local.count + 1>
            </cfif>
        </cfloop>
        <cfreturn local.count>
    </cffunction>
</cfcomponent>