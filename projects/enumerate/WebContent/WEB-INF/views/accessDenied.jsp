<html>
    <head>
        <title>enumeratee</title>
    </head>
    <body>
      <h3>You are not authorized to access user profile.</h3>
      <form action="<%=request.getContextPath()%>/appLogout" method="POST">
        <input type="submit" value="Logout"/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>		
      </form> 
    </body>
</html> 