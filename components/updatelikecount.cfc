<cfcomponent>
    <cffunction  name="getupdatelikecount" access="remote" returnType="any" returnFormat="json">
        <cfargument  name="name" type="any" required="yes">
        <cfquery name="updateQuery">
            SELECT *
            FROM uploaddata
            WHERE Title = <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar"> 
        </cfquery>
        <cfset local.displaylikes = structNew()>
        <cfset local.displaylikes.ID = updateQuery.ID>
        <cfset local.displaylikes.Likes = updateQuery.Likes>
        <cfreturn local.displaylikes>
    </cffunction>
</cfcomponent>