<cfcomponent>
    <cffunction name="getsignin" access="remote" <!--- returnType="struct" returnFormat="json" --->>
       <!---  <cfargument name="Email" type="any" required="yes"> --->
        <cfquery name="uploadlogin">
            SELECT FullName, Profile
            FROM signup
            
        </cfquery>
        <!--- <cfdump var="#uploadlogin#">
        <cfset local.profileQuery = structNew()>
        <cfset local.profileQuery.FullName = uploadlogin.FullName>
        <cfset local.profileQuery.Profile = uploadlogin.Profile> --->
        <cfreturn uploadlogin>
    </cffunction>
</cfcomponent>