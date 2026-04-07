<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<h2>Оставить заявку</h2>

<%--@elvariable id="errorMessage" type=""--%>
<c:if test="${not empty errorMessage}"><%--@elvariable id="errorMessage" type=""--%>
<p style="color: red;">${errorMessage}</p>
</c:if>

<form action="save-request" method="POST">
    <%-- Добавь инпуты для данных (например, имя и описание) --%>
    Имя: <label>
    <input type="text" name="userName">
</label><br>
    Текст: <label>
    <textarea name="description"></textarea>
</label><br>
    <button type="submit">Отправить</button>
</form>
</body>
</html>