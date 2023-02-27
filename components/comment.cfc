<cfcomponent>
    <cffunction name="getcomment" access="remote">
        <cfargument name="comment" type="any" default="#form.comttext#">
        <cfquery name="selectcomment">
            SELECT Comment
            FROM comment
            WHERE Comment = <cfqueryparam value="#arguments.comment#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif selectcomment.recordcount eq 0>
            <cfquery name="insetcomment">
                INSERT INTO comment(Comment)
                VALUES(
                        <cfqueryparam value="#arguments.comment#" cfsqltype="cf_sql_varchar">
                )
            </cfquery>
        <cfelse>
            <cfreturn "This record is already exists!">
        </cfif>
        <cflocation url="view.cfm">
    </cffunction>

    <cffunction  name="getcommentlist" access="remote">
        <cfquery name="commentlist">
            SELECT * 
            FROM comment
        </cfquery>
        <cfreturn commentlist>
    </cffunction>

    <cffunction  name="getcountcomt" access="remote" returnType="query">
        <cfquery name="countQuery">
            SELECT COUNT(*) 
            AS CommentCount
            FROM comment
        </cfquery>
        <cfreturn countQuery>
    </cffunction>
</cfcomponent>