<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<h2>Заявка успешно сохранена!</h2>

<p>
    <strong> Имя: </strong>
    <%--@elvariable id="savedName" type=""--%>
    <c:out value ="${savedName}" default="Имя не указано"/>
</p>
<p>
    <strong> Описание заявки: </strong>
    <%--@elvariable id="savedDesc" type=""--%>
    <c:out value ="${savedDesc}" default="Описание отсутствует"/>
</p>
<hr>
<a href="saveRequest.jsp">Подать ещё одну заявку</a>
</body>
</html>
