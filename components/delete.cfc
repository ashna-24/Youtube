<cfcomponent>
    <cffunction  name="getdelete" access="remote">
        <cfquery name="deleteQuery">
            DELETE 
            FROM uploaddata
			WHERE ID = <cfqueryparam value="#url.ID#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation url="../adminpage.cfm" addtoken="no">
    </cffunction>
</cfcomponent>