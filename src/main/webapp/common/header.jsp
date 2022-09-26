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
            <div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
                <!-- Mobile menu button-->
                <button type="button"
                        class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white"
                        aria-controls="mobile-menu" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <svg class="block h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor"
                         aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16"></path>
                    </svg>
                    <svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                         stroke-width="2" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12"></path>
                    </svg>
                </button>
            </div>
            <div class="flex-1 flex items-center justify-center sm:items-stretch sm:justify-start">
                <a href="${pageContext.request.contextPath}/" class="flex-shrink-0 flex items-center select-none">
                    <img class="block w-36 pointer-events-none" width="873" height="583"
                         src="./images/logos/ceee_logo.png" alt="CEEE">
                </a>
                <div class="hidden sm:block sm:ml-6 self-center">
                    <div class="flex space-x-4">
                        <a href="endpoints"
                           class="text-gray-600 hover:text-black px-3 py-2 rounded-md font-medium"
                           aria-current="page">Endpoints</a>
                    </div>
                </div>
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

