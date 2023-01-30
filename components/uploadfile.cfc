<cfcomponent>
    <cffunction name="getupload" access="remote">
        <cfargument name="file" type="any" default="#form.fileupload#">
        <cfquery name="uploadQuery">
            SELECT FileUpload
            FROM uploaddata
            WHERE FileUpload=<cfqueryparam value="#arguments.file#" cfsqltype="cf_sql_varchar">
        </cfquery>
        <cfquery name="insertQuery">
            INSERT INTO uploaddata(FileUpload)
            VALUES  (
                    <cfqueryparam value="#arguments.file#" cfsqltype="cf_sql_varchar">
                    );
        </cfquery>
        <cfdump  var="#arguments.file#">
    </cffunction>
</cfcomponent>