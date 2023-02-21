<cfcomponent>
    <cffunction  name="getUpdatelikes" access="remote" returnType="any" returnFormat="json">
        <cfargument name="contactid" type="any" required="yes">
        <cfargument name="title" type="any" required="yes">
        <cfquery name="updatesubQuery">
            DECLARE @Likes int 
            SET @Likes = <cfqueryparam value="#arguments.title#" cfsqltype="cf_sql_varchar">
            UPDATE uploaddata 
            SET @Likes = Likes = @Likes + 1
            WHERE ID = <cfqueryparam value="#arguments.contactId#" cfsqltype="cf_sql_varchar">
        </cfquery>
    </cffunction>
</cfcomponent>