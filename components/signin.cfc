<cfcomponent>
    <cffunction name="getlogin" access="remote">
        <cfargument name="username" type="any" default="#form.username#">
        <cfargument name="password" type="any" default="#form.password#">
        <cfquery name="loginQuery">
            SELECT UserName, Password, LoginRole
            FROM signup
            WHERE UserName = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
            AND Password = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfdump  var="#loginQuery#">
        <cfset session.username = loginQuery.UserName>
        <cfset session.role = loginQuery.LoginRole>
        <cfif loginQuery.recordCount>
            <cfif session.role == "User">
                <cfset userflag = 1>
                <cflocation  url="homepage.cfm" addtoken="No">
            <cfelseif session.role == "Admin">
                <cfset adminflag = 1>
                <cflocation  url="adminhome.cfm" addtoken="No">
            <cfelse>
                <cflocation  url="login.cfm" addtoken="No">
                <cfreturn "Invalid Role!!">
            </cfif>
        <cfelse>
            <cflocation  url="login.cfm" addtoken="No">
            <cfreturn "Invalid Username or Password!!">
            <cfset structClear(session)>
        </cfif>
    </cffunction>
</cfcomponent>