<cfcomponent>
    <cffunction  name="getupdate" access="remote" returnType="any" returnFormat="json">
        <cfargument  name="name" type="any" required="yes">
        <cfquery name="updateQuery">
            SELECT * 
            FROM uploaddata
            WHERE Title = <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar"> 
        </cfquery>
        <cfset local.displaydata = structNew()>
        <cfset local.displaydata.ID = updateQuery.ID>
        <cfset local.displaydata.Subscribers = updateQuery.Subscribers>
        <cfreturn local.displaydata>
    </cffunction>
</cfcomponent>