<cfcomponent>
    <cffunction name="getsignup" access="remote">
        <cfargument name="fullname" type="any" default="#form.fullname#">
        <cfargument name="email" type="any" default="#form.email#">
        <cfargument name="number" type="any" default="#form.number#">
        <cfargument name="role" type="any" default="#form.role#">
        <cfargument name="uname" type="any" default="#form.uname#">
        <cfargument name="pswd" type="any" default="#form.pswd#">
        <cfargument name="conpswd" type="any" default="#form.conpswd#">
        <cfquery name="validate">
            SELECT Email
            FROM signup
            WHERE Email = <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif validate.recordcount eq 0>
            <cfquery name="insertQuery">
                INSERT INTO signup (FullName, Email, PhoneNumber, LoginRole, Username, Password, ConformPassword)
                VALUES(
                        <cfqueryparam value="#arguments.fullname#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#arguments.number#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#arguments.role#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#arguments.uname#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#arguments.pswd#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#arguments.conpswd#" cfsqltype="cf_sql_varchar">
                    );
            </cfquery>
        <cfelse>
            <cfreturn "This record is already exists!">
        </cfif>
    </cffunction>
</cfcomponent>