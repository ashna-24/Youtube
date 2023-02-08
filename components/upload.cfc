<cfcomponent>
    <cffunction name="getupload" access="remote">
        <cfargument name="file" type="any" default="#form.fileupload#">
        <cfif len(trim(arguments.file))>
            <cffile action="upload" fileField="fileupload" nameConflict="overwrite" accept="image/png,video/mp4,video/wmv" result="thisResult" destination="#expandpath(".\assets\uploadedfile\")#">
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
        </cfif>
    </cffunction>
</cfcomponent>