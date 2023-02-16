<cfcomponent>
    <cffunction name="getcomment" access="remote">
        <cfargument name="comment" type="any" default="#form.comttext#">
        <cfquery name="insetcomment">
            INSERT INTO comment(Comment)
            VALUES(
                    <cfqueryparam value="#arguments.comment#" cfsqltype="cf_sql_varchar">
            )
        </cfquery>
    </cffunction>

    <cffunction  name="getcommentlist" access="remote">
        <cfquery name="commentlist">
            SELECT * 
            FROM comment
        </cfquery>
        <cfreturn commentlist>
    </cffunction>
</cfcomponent>