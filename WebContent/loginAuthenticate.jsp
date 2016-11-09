<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Time Manager</title>
</head>
<body>
<c:if test="${not empty param.ID and not empty param.Pass}">
    <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/jwd_cuoiky" user="root" password="1900561558" />

    <sql:query dataSource="${ds}" var="selectQ">
        select count(*) as dem from userinfo where ID='${param.ID}' and Pass='${param.Pass}'
    </sql:query>

    <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
            <c:when test="${r.dem gt 0}">
                
                <c:choose>
				  <c:when test="${param.ID == 'user' }">
				    <c:redirect url="Cn Calendar 2.jsp" />
				  </c:when>
				  <c:otherwise>
				    <c:redirect url="Login Admin.jsp" />
				  </c:otherwise>
				</c:choose>
            </c:when>
            <c:otherwise>
                <c:redirect url="Home Page.jsp">
                    <c:param name="errMsg" value="Username/password does not match" />
                </c:redirect>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</c:if>
</body>
</html>