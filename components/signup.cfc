<cfcomponent>
    <cffunction name="getsignup" access="remote">
        <cfargument  name="fullname" type="any" default="#form.fullname#">
        <cfargument  name="email" type="any" default="#form.email#">
        <cfargument  name="number" type="any" default="#form.number#">
        <cfargument  name="username" type="any" default="#form.username#">
        <cfargument  name="pswd" type="any" default="#form.pswd#">
        <cfargument  name="conpswd" type="any" default="#form.conpswd#">
        <cfquery name="insertQuery">
            INSERT INTO signup(FullName, Email, PhoneNumber, Username, Password, ConformPassword)
            VALUES(
                    <cfqueryparam value="#arguments.fullname#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.number#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.pswd#" cfsqltype="cf_sql_varchar">
                    <cfqueryparam value="#arguments.conpswd#" cfsqltype="cf_sql_varchar">);
        </cfquery>
    </cffunction>
</cfcomponent>