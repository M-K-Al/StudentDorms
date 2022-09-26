<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mutae
  Date: 8/31/2022
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<jsp:include page="./common/header.jsp"/>
<div class="grid place-items-center h-[75vh] sm:mt-0">
    <div class="mt-5 w-3/5 max-w-sm md:mt-0">
        <form id="login-form" method="POST">
            <div class="overflow-hidden shadow sm:rounded-md">
                <div class="bg-white px-4 py-5 sm:p-6">

                    <div class=" py-6 grid gap-4 justify-center w-full items-center select-none">
                        <img class="block place-self-center w-48 pointer-events-none" width="873" height="583"
                             src="./images/logos/ceee_logo.png" alt="CEEE">
                    </div>

                    <div class="grid grid-cols-1 gap-2">

                        <div class="px-10">
                            <label for="username" class="block text-sm font-medium text-gray-700">Username</label>
                            <input type="text" name="username" id="username" autocomplete="email"
                                   class="p-2 mt-2 border-2 outline-none block w-full rounded-md border-gray-300 shadow-sm focus:border-cyan-500 focus:ring-cyan-500 sm:text-sm">
                        </div>

                        <div class="px-10">
                            <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                            <input type="password" name="password" id="password" autocomplete="off"
                                   class="p-2 mt-2 border-2 outline-none block w-full rounded-md border-gray-300 shadow-sm focus:border-cyan-500 focus:ring-cyan-500 sm:text-sm">
                        </div>

                        <c:if test="${error == true}">
                            <div class="mt-4 flex rounded-lg bg-red-100 p-4 dark:bg-red-200" role="alert">
                                <svg aria-hidden="true" class="h-5 w-5 flex-shrink-0 text-red-700 dark:text-red-800"
                                     fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                          d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                                          clip-rule="evenodd"></path>
                                </svg>
                                <span class="sr-only">Info</span>
                                <div class="ml-3 text-sm font-medium text-red-700 dark:text-red-800">Password or/and
                                    username is/are incorrect
                                </div>
                            </div>
                        </c:if>

                        <div id="login" tabindex="0" aria-keyshortcuts="enter"
                             class="w-3/4 mt-4 rounded border text-center place-self-center cursor-pointer border-cyan-400 bg-cyan-300 p-2.5 shadow-sm transition hover:scale-90">
                            Login
                        </div>
                        <input type="submit" hidden>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    if (window.history.replaceState) window.history.replaceState(null, null, window.location.href);
</script>
<script src="./login/login.js"></script>
</body>
</html>
