<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 09/11/2021
  Time: 2:21 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String,String> dic = new HashMap<>();
%>
<%
    dic.put("hello","xin chào");
    dic.put("how","như thế nào");
    dic.put("heart","tâm");
    dic.put("lotus","liên");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if(result!=null){
        out.println("Word: " + search);
        out.println("Result: " + result);
    }else{
        out.println("Not found");
    }

%>
</body>
</html>
