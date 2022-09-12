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
<div class="w-full">
    <jsp:include page="../common/header.jsp"/>
    <div class="grid text-center m-4 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 2xl:grid-cols-5 gap-3 mx-[max(1.75rem,calc(50%-45rem))]">
        <c:forEach var="i" begin="1" end="300">
            <a href="#"
               class="p-6 w-full bg-gray-50 rounded-lg border border-gray-400 shadow-md hover:bg-gray-300 dark:bg-gray-600 dark:border-gray-100 dark:hover:bg-gray-400">
                <div class="grid grid-cols-2">
                    <div class="grid content-around">
                        <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"><c:out value="${i}"/>00</h5>
                        <h5 class="pt-2 font-medium tracking-tight text-gray-500 dark:text-white">192.168.1.1</h5>
                    </div>
                    <div>
                        <h5 class="pt-2 font-medium tracking-tight text-blue-600 dark:text-white">RH: 15%</h5>
                        <h5 class="pt-2 font-medium tracking-tight text-red-600 dark:text-white">T: 25.5 °C</h5>
                        <h5 class="pt-2 font-medium tracking-tight text-purple-600 dark:text-white">L: 911 lux</h5>
                        <h5 class="pt-2 font-medium tracking-tight text-orange-600 dark:text-white">CO<sub>2</sub>: 9001 ppm</h5>
                        <h5 class="pt-2 font-medium tracking-tight text-green-600 dark:text-white">O: 1</h5>
                    </div>
                </div>
            </a>
        </c:forEach>
    </div>
</div>
</body>
</html>
