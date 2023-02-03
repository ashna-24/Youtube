<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/youtubeapp.css">
        <link rel="icon" href="assets/youtubeicon.png">
        <title>YouTube</title> 
    </head>
    <body class="body">
        <cfoutput>
            <cfif structKeyExists(session, 'userflag')>
                <cfinclude  template="header.cfm">
            </cfif>
        </cfoutput>
    </body>
</html>