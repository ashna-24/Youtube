<cfcomponent>
    <cffunction  name="getUser" access="remote">
        <cfquery name="userpage">
            SELECT *
            FROM signup
            WHERE LoginRole = 'User'
        </cfquery>
        <cfreturn userpage>
    </cffunction>
</cfcomponent>