<cfcomponent>
    <cffunction name="getWordQuery" access="remote" returnType="query">
        <cfquery name="textCount" datasource="employee">
            SELECT Word, Wordcount
            FROM textQueryData
            WHERE not len(Word)<3
            ORDER BY Wordcount DESC,len(Word) DESC, Word ASC
        </cfquery>
        <cfreturn textCount>
    </cffunction>
</cfcomponent>
