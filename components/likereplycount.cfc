<cfcomponent>
    <cffunction  name="getlikereplycount" access="remote" returnType="any" returnFormat="json">
        <cfargument name="name" type="any" required="yes">
        <cfquery name="updatereplyQuery">
            SELECT * 
            FROM comment
            WHERE Comment = <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar"> 
        </cfquery>
        <cfset local.replaylikes = structNew()>
        <cfset local.replaylikes.ID = updatereplyQuery.ID>
        <cfset local.replaylikes.Likes = updatereplyQuery.Likes>
        <cfreturn local.replaylikes>
    </cffunction>
</cfcomponent>