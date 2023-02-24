<cfcomponent>
    <cffunction name="getUpdatereply" access="remote" returnType="any" returnFormat="json">
        <cfargument name="contactid" type="any" required="yes">
        <cfargument name="title" type="any" required="yes">
        <cfquery name="updatesubQuery">
            DECLARE @Likes int 
            SET @Likes = 5
            UPDATE comment 
            SET @Likes = Likes = @Likes + 1
            WHERE Comment = <cfqueryparam value="#arguments.contactId#" cfsqltype="cf_sql_varchar">
        </cfquery>
    </cffunction>
</cfcomponent>