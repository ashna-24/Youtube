<cfcomponent>
    <cffunction  name="getUpdateunsub" access="remote" returnType="any" returnFormat="json">
        <cfargument  name="contactId" type="any" required="yes">
        <cfargument  name="title" type="any" required="yes">
        <cfquery name="updateunsubQuery">
            DECLARE @Subscribers int 
            SET @Subscribers = <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">
            UPDATE uploaddata 
            SET @Subscribers = Subscribers = @Subscribers - 1
            WHERE ID = <cfqueryparam value="#arguments.contactId#" cfsqltype="cf_sql_varchar">
        </cfquery>
    </cffunction>
</cfcomponent>