<cfcomponent>
    <cffunction  name="getSQL" access="remote" returnType="any">
        <cfset queryData= queryNew("ID, Name, Email","Integer,Varchar,Varchar",
        [
            {ID=1, Name="Ashna F Raj", Email="ashnafrajan@gmail.com"},
            {ID=2, Name="Ram Prakash", Email="ramprakash@gmail.com"},
            {ID=3, Name="Narveen K A", Email="narveenka@gmail.com"}
        ])>
        <cfreturn queryData>
    </cffunction>
</cfcomponent>