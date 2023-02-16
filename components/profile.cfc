<cfcomponent>
    <cffunction name="getsignin" access="remote">
        <cfquery name="uploadlogin">
            SELECT *
            FROM signup  
            WHERE LoginRole = 'Admin'          
        </cfquery>
        <cfreturn uploadlogin>
    </cffunction>
</cfcomponent>