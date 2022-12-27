<cfcomponent>
    <cffunction  name="getDate" access="remote" returnType="struct">
        <cfset local.Date= dateFormat("#now()#")>
        <cfset local.Month= dateFormat("#now()#", "mm")>
        <cfset local.numMonth= month(local.Date)>
        <cfset local.wordMonth= monthAsString("#local.Month#")>
        <cfset local.week= dayOfWeek(local.Date)>
        <cfset local.Friday =(6- local.week)-7>
        <cfset local.lastFriday= dateAdd("d", local.Friday, local.Date)>
        <cfset local.lastDay = dateFormat("#local.lastFriday#")>
        <cfset local.ltMonth = CreateDate(Year( Now() ),Month( Now() ),1)>
        <cfset local.Lastmonth = (DateAdd( "m", 1, local.ltMonth ) -1)>
        <cfset local.lastM = dateFormat("#local.Lastmonth#")>
        <cfset local.dateStruct=structNew()>
        <cfset local.dateStruct.TodaysDate = "#local.Date#">
        <cfset local.dateStruct.MonthInNumeric="#local.numMonth#">
        <cfset local.dateStruct.MonthInWords = "#local.wordMonth#">
        <cfset local.dateStruct.LastFridayDate= "#local.lastDay#">
        <cfset local.dateStruct.LastDayofTheMonth ="#local.lastM#">

        <cfloop from="1" to="5" index="i">
            <cfset local.Fivedays= dateFormat(dateAdd("d", -i, local.Date), "dd-mmm-yyyy - dddd")>
            <cfset local.colordate= dateFormat(dateAdd("d", -i, local.Date), "dddd")>
            <cfswitch expression="#local.colordate#">
                <cfcase  value="Monday">
                    <cfset local.Fivedays="<font color=Green>#local.Fivedays#</font>">
                </cfcase>
                <cfcase  value="Tuesday">
                    <cfset local.Fivedays="<font color=Orange>#local.Fivedays#</font>">
                </cfcase>
                <cfcase  value="Wednesday">
                    <cfset local.Fivedays="<font color=Yellow>#local.Fivedays#</font>">
                </cfcase>
                <cfcase  value="Thursday">
                    <cfset local.Fivedays="<font color=Bold Black>#local.Fivedays#</font>">
                </cfcase>
                <cfcase  value="Friday">
                    <cfset local.Fivedays="<font color=Blue>#local.Fivedays#</font>">
                </cfcase>
                <cfcase  value="Saturday">
                    <cfset local.Fivedays="<font color=Bold Red>#local.Fivedays#</font>">
                </cfcase>
                <cfcase  value="Sunday">
                    <cfset local.Fivedays="<font color=Red>#local.Fivedays#</font>">
                </cfcase>
                <cfdefaultcase>
                    Invalid Number!
                </cfdefaultcase>
            </cfswitch>
            <cfset structInsert(local.dateStruct, "#i#", "#local.Fivedays#")>
        </cfloop>
        <cfreturn local.dateStruct>
    </cffunction>
</cfcomponent>