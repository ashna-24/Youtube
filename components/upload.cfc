<cfcomponent>
    <cffunction name="getupload" access="remote" returnType="any">
        <cfargument name="file" type="any" default="#form.fileupload#">
        <cfif len(trim(arguments.file))>
            <cffile action="upload" fileField="fileupload" nameConflict="overwrite" accept="mp4,audio/3gpp,video/3gpp,audio/3gp2,video/3gp2,audio/mp4,video/mp4,application/mp4" result="thisResult" destination="#expandpath(".\assets\uploadedfile\")#">
        </cfif>
        <cfset session.uploadedfile =  thisResult.serverFile>
        <cfquery name="uploadQuery">
            SELECT FileUpload
            FROM uploaddata
            WHERE FileUpload = <cfqueryparam value="#arguments.file#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfif uploadQuery.recordcount eq 0>
            <cfquery name="insertQuery">
                INSERT INTO uploaddata(FileUpload)
                VALUES  (
                        <cfqueryparam value="#session.uploadedfile#" cfsqltype="cf_sql_varchar">
                        );
            </cfquery>
        <cfelse>
            <cfreturn "This record is already exists!">
        </cfif>
    </cffunction>
</cfcomponent>