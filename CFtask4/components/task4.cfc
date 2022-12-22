<cfcomponent>
    <cffunction  name="getDate" access="remote" returnType="struct">
        <cfset Date= dateFormat("#now()#")>
        <cfset Month= dateFormat("#now()#", "mm")>
        <cfset numMonth= month(Date)>
        <cfset wordMonth= monthAsString("#Month#")>
        <cfset week= dayOfWeek(Date)>
        <cfset Friday =(6- week)-7>
        <cfset lastFriday= dateAdd("d", Friday, Date)>
        <cfset lastDay = dateFormat("#lastFriday#")>
        <cfset Lastmonth= dateAdd("d", 10, dateAdd("m", 0 , Date)-1)>
        <cfset lastM = dateFormat("#Lastmonth#")>
        <cfset dateStruct=structNew()>
        
        <cfset dateStruct.TodaysDate = "#Date#">
        <cfset dateStruct.MonthInNumeric="#numMonth#">
        <cfset dateStruct.MonthInWords = "#wordMonth#">
        <cfset dateStruct.LastFridayDate= "#lastDay#">
        <cfset dateStruct.LastDayofTheMonth ="#lastM#">

        <cfloop from="1" to="5" index="i">
            <cfset Fivedays= dateFormat(dateAdd("d", -i, Date), "dd-mmm-yyyy - dddd")>
            <cfset colordate= dateFormat(dateAdd("d", -i, Date), "dddd")>
            <cfswitch expression="#colordate#">
                <cfcase  value="Monday">
                    <cfset Fivedays="<font color=Green>#Fivedays#</font>">
                </cfcase>
                <cfcase  value="Tuesday">
                    <cfset Fivedays="<font color=Orange>#Fivedays#</font>">
                </cfcase>
                <cfcase  value="Wednesday">
                    <cfset Fivedays="<font color=Yellow>#Fivedays#</font>">
                </cfcase>
                <cfcase  value="Thursday">
                    <cfset Fivedays="<font color=Bold Black>#Fivedays#</font>">
                </cfcase>
                <cfcase  value="Friday">
                    <cfset Fivedays="<font color=Blue>#Fivedays#</font>">
                </cfcase>
                <cfcase  value="Saturday">
                    <cfset Fivedays="<font color=Bold Red>#Fivedays#</font>">
                </cfcase>
                <cfcase  value="Sunday">
                    <cfset Fivedays="<font color=Red>#Fivedays#</font>">
                </cfcase>
                <cfdefaultcase>
                    Invalid Number!
                </cfdefaultcase>
            </cfswitch>
            <cfset structInsert(dateStruct, "#i#", "#Fivedays#")>
        </cfloop>
        <cfreturn dateStruct>
    </cffunction>
</cfcomponent>