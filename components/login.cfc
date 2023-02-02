<cfcomponent>
    <cffunction  name="getlogin" access="remote">
        <cfargument  name="username" type="any" default="#form.username#">
        <cfargument  name="password" type="any" default="#form.pswd#">
        <cfquery name="loginQuery">
            SELECT UserName, Password
            FROM signup 
            WHERE UserName = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
            AND Password = <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
        </cfquery>
    </cffunction>
</cfcomponent>