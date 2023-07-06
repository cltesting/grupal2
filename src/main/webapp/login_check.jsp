<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  
String name=request.getParameter("usName");
String password=request.getParameter("usPass");
//Check credentials and if valid, set session attributes
if(name.equals("admin") && password.equals("1234")){
//Create HttpSession Object
    HttpSession sess=request.getSession();
    //Set session attribute logindetail for authentication
    session.setAttribute("logindetail", name+password);
    //Redirect to lock.jsp to view current status of vault
    response.sendRedirect("usuario.jsp");
}else{
    //If credentials are wrong, prompt the user
    out.print("<h4>Sorry, username or password is incorrect!</h4>");
    getServletContext().getRequestDispatcher("login_user.jsp").include(request, response);
}
%>
</body>
</html>