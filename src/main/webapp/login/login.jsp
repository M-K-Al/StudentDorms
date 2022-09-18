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
<jsp:include page="../common/header.jsp"/>
<div class="grid place-items-center h-[75vh] sm:mt-0">
    <div class="mt-5 w-3/5 max-w-sm md:mt-0">
        <form id="login-form" action="j_security_check" method="POST">
            <div class="overflow-hidden shadow sm:rounded-md">
                <div class="bg-white px-4 py-5 sm:p-6">

                    <div class=" py-6 grid gap-4 justify-center w-full items-center select-none">
                        <img class="block place-self-center w-48 pointer-events-none" width="873" height="583"
                             src="./images/logos/ceee_logo.png" alt="CEEE">
                    </div>

                    <div class="grid grid-cols-1 gap-2">

                        <div class="px-10">
                            <label for="username" class="block text-sm font-medium text-gray-700">Username</label>
                            <input type="text" name="j_username" id="username" autocomplete="email"
                                   class="p-2 mt-2 border-2 outline-none block w-full rounded-md border-gray-300 shadow-sm focus:border-cyan-500 focus:ring-cyan-500 sm:text-sm">
                        </div>

                        <div class="px-10">
                            <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                            <input type="text" name="j_password" id="password" autocomplete="password"
                                   class="p-2 mt-2 border-2 outline-none block w-full rounded-md border-gray-300 shadow-sm focus:border-cyan-500 focus:ring-cyan-500 sm:text-sm">
                        </div>

                        <div id="login" tabindex="0"
                             class="w-3/4 mt-6 rounded border text-center place-self-center cursor-pointer border-cyan-400 bg-cyan-300 p-2.5 shadow-sm transition hover:scale-90">
                            Login
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="./login/login.js"></script>
</body>
</html>
