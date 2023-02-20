<cfcomponent>
    <cffunction  name="getdeletecomt" access="remote">
        <cfquery name="deletecomtQuery">
            DELETE 
            FROM comment
			WHERE ID = <cfqueryparam value="#url.ID#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cflocation url="../adminview.cfm" addtoken="no">
    </cffunction>
</cfcomponent>