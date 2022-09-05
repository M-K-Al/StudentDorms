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
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="grid place-items-center h-[75vh] sm:mt-0">
    <div class="mt-5 w-3/5 max-w-sm md:mt-0">
        <form action="#" method="POST">
            <div class="overflow-hidden shadow sm:rounded-md">
                <div class="bg-white px-4 py-5 sm:p-6">

                    <div class=" py-6 grid gap-4 justify-center w-full items-center">
                        <img class="block place-self-center w-20" width="266" height="331"
                             src="./images/logos/ceee_logo_mini.png" alt="CEEE">
                    </div>

                    <div class="grid grid-cols-1 gap-10">

                        <div class="px-10">
                            <label for="username" class="block text-sm font-medium text-gray-700">Username</label>
                            <input type="text" name="username" id="username" autocomplete="email"
                                   class="p-2 mt-2 border-2 outline-none block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                        </div>

                        <div class="px-10">
                            <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                            <input type="text" name="password" id="password" autocomplete="password"
                                   class="p-2 mt-2 border-2 outline-none block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm">
                        </div>

                        <div class="flex justify-center w-full">
                            <button type="button"
                                    class="p-2 mt-2 block w-4/5 rounded-md bg-[#7dd3fc] shadow-sm hover:opacity-90">
                                Hello
                            </button>
                        </div>

                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
