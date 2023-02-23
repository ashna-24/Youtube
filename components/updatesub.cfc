<cfcomponent>
    <cffunction  name="getUpdatesub" access="remote" returnType="any" returnFormat="json">
        <cfargument  name="contactid" type="any" required="yes">
        <cfargument  name="title" type="any" required="yes">
        <cfquery name="updatesubQuery">
            DECLARE @Subscribers int 
            SET @Subscribers = 20
            UPDATE uploaddata 
            SET @Subscribers = Subscribers = @Subscribers + 1
            WHERE ID = <cfqueryparam value="#arguments.contactId#" cfsqltype="cf_sql_varchar">
        </cfquery>
    </cffunction>
</cfcomponent>