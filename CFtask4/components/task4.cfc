<cfcomponent>
    <cffunction  name="getDate" access="remote">
        <cfif structKeyExists(form, "submit")>
            <cfset Date= dateFormat("#now()#")>
            <cfset Month= dateFormat("#now()#", "mm")>
            <cfset numMonth= month(Date)>
            <cfset wordMonth= monthAsString("#Month#")>
            <cfset week= dayOfWeek(Date)>
            <cfset Friday =(6- week)-7>
            <cfset lastFriday= dateAdd("d", Friday, Date)>
            <cfset lastDay = dateFormat("#lastFriday#")>
            <cfset Lastmonth= dateAdd("d", -1, dateAdd("m", 1 , Date)-1)>
            <cfset lastM = dateFormat("#Lastmonth#")>
            <cfoutput>
                Today's date #Date# <br>
                Month in numeric #numMonth# <br>
                Month in words #wordMonth# <br>
                Last friday date #lastDay# <br>
                Last day of the month #lastM# <br>
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
                    <cfoutput>
                        #Fivedays#<br>
                    </cfoutput>
                </cfloop>
            </cfoutput>
        </cfif>
    </cffunction>
</cfcomponent>