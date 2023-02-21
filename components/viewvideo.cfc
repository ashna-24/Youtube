<cfcomponent>
    <cffunction name="getviewData" access="remote" returnType="struct" returnFormat="json">        
        <cfargument name="Email" type="string" required="yes">
        <cfquery name="aboutQuery">
            SELECT *
            FROM uploaddata
            WHERE ID = <cfqueryparam value="#arguments.Email#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfset local.viewQuery=structNew()>
        <cfset local.viewQuery.FileUpload = aboutQuery.FileUpload>
        <cfset local.viewQuery.Title = aboutQuery.Title>
        <cfset local.viewQuery.Description = aboutQuery.Description>
        <cfset local.viewQuery.Visibility = aboutQuery.Visibility>
        <cfset local.viewQuery.DateOfPublishing = aboutQuery.DateOfPublishing>
        <cfset local.viewQuery.Subscribers = aboutQuery.Subscribers>
        <cfset local.viewQuery.Likes = aboutQuery.Likes>
        <cfreturn local.viewQuery>      
    </cffunction>
</cfcomponent>