<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mutae
  Date: 8/29/2022
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link href="./styles/dist/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<nav class="bg-gray-100">
    <div class="max-w-7xl mx-auto px-2 sm:px-6 lg:px-8 select-text">
        <div class="relative flex items-center justify-between">
            <div class="flex-1 flex items-center justify-center sm:items-stretch sm:justify-start">
                <a href="${pageContext.request.contextPath}/" class="flex-shrink-0 flex items-center select-none">
                    <img class="block w-36 pointer-events-none" width="873" height="583"
                         src="./images/logos/ceee_logo.png" alt="CEEE">
                </a>
            </div>
            <div class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
                <div class="hidden sm:block sm:ml-6">
                    <div class="flex space-x-4">
                        <c:choose>
                            <c:when test="${pageContext.request.userPrincipal != null}">
                                <div class="relative inline-block text-left">
                                    <span class="inline-flex cursor-pointer select-none w-full justify-center text-gray-600 hover:text-black px-2 py-2 rounded-md font-medium"
                                          id="menu-button" aria-expanded="true" aria-haspopup="true" tabindex="-1">
                                            ${pageContext.request.userPrincipal.name}
                                    </span>

                                    <div class="absolute hidden right-0 py-1.5 z-10 mt-2 w-56 origin-top-right rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none"
                                         id="menu"
                                         role="menu" aria-orientation="vertical" aria-labelledby="menu-button">
                                        <div class="py-1" role="none">
                                            <form method="POST" action="signout" role="none" class="h-5">
                                                <button type="submit"
                                                        class="block w-full px-4 py-2 text-left font-medium text-sm text-red-700 hover:bg-blue-200"
                                                        role="menuitem" id="signout">Sign out
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <a href="login"
                                   class="text-gray-600 hover:text-black px-3 py-2 rounded-md font-medium"
                                   aria-current="page">Login</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
<script src="./common/header.js"></script>
</body>
</html>

