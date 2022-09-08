<%--
  Created by IntelliJ IDEA.
  User: s201848020
  Date: 9/8/2022
  Time: 6:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Rooms</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<%--TODO: make header servlat--%>
<div class="grid m-4 grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-2">
    <c:forEach var="i" begin="1" end="10">
        <a href="#"
           class="block p-6 max-w-sm bg-white rounded-lg border border-gray-200 shadow-md hover:bg-gray-100 dark:bg-gray-800 dark:border-gray-700 dark:hover:bg-gray-700">
            <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"><c:out value="${i}"/></h5>
        </a>
    </c:forEach>
</div>
</body>
</html>
