<cfcomponent>
    <cffunction  name="getSQL" access="remote">
         <cfscript>
            queryData= queryNew("ID, Name, Email","Integer,Varchar,Varchar",
            [
                {ID=1, Name="Ashna F Raj", Email="ashnafrajan@gmail.com"},
                {ID=2, Name="Ram Prakash", Email="ramprakash@gmail.com"},
                {ID=3, Name="Narveen K A", Email="narveenka@gmail.com"}
            ]);
            writeDump(queryData)
         </cfscript>
    </cffunction>
</cfcomponent>