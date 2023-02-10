<cfcomponent>
    <cffunction name="getinsert" access="remote">
        <cfquery name="uploadVideo">
            SELECT *
            FROM uploaddata
        </cfquery>
        <cfreturn uploadVideo>
    </cffunction>
</cfcomponent>