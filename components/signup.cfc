<cfcomponent>
    <cffunction name="getsignup" access="remote">
        <cfargument  name="fullname" type="any" default="#form.fullname#">
        <cfargument  name="email" type="any" default="#form.email#">
        <cfargument  name="number" type="any" default="#form.number#">
        <cfargument  name="role" type="any" default="#form.role#">
        <cfargument  name="uname" type="any" default="#form.uname#">
        <cfargument  name="password" type="any" default="#form.password#">
        <cfargument  name="conpswd" type="any" default="#form.conpswd#">
        <cfquery name="insertQuery">
            INSERT INTO signup(FullName, Email, PhoneNumber, LoginRole, Username, Password, ConformPassword)
            VALUES(
                    <cfqueryparam value="#arguments.fullname#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.number#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.role#" cfsqltype="cf _sql_varchar">
                    <cfqueryparam value="#arguments.uname#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.conpswd#" cfsqltype="cf_sql_varchar">);
        </cfquery>
    </cffunction>
</cfcomponent>