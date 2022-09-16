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
    <title>Endpoints</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <%--TODO: change to dist--%>
    <link href="./styles/src/style.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<div class="w-full">
    <jsp:include page="../common/header.jsp"/>
    <div class="mx-[max(1.75rem,calc(50%-45rem))]">
        <div class="min-w-screen relative m-4 flex items-center">
            <div class="w-fit text-lg">Total endpoint(s): 15</div>
            <div class="relative ml-auto flex items-center gap-2">
                <button id="add-endpoint">
                    <div class="w-fit rounded border border-cyan-400 bg-cyan-300 p-2.5 shadow-sm transition hover:scale-90">
                        Add endpoint
                    </div>
                </button>
            </div>
        </div>
        <div class="grid text-center m-4 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 2xl:grid-cols-5 gap-3">
            <c:forEach var="i" begin="1" end="15">
                <a href="#"
                   class="group p-4 w-full bg-gray-50 rounded-lg border border-gray-400 shadow-md hover:bg-gray-300 dark:bg-gray-600 dark:border-gray-100 dark:hover:bg-gray-400">
                    <div class="grid grid-cols-2">
                        <div class="grid content-around">
                            <div class="absolute grid gap-6 place-self-center transition-all duration-300 group-hover:-translate-y-10 group-hover:gap-2">
                                <h5 class="text-2xl font-bold tracking-tight text-gray-900 dark:text-white"><c:out
                                        value="${i}"/>00</h5>
                                <h5 class="font-medium tracking-tight text-gray-500 dark:text-white">192.168.1.1</h5>
                            </div>
                            <button class="mt-20 w-2/3 place-self-center hidden rounded-md border border-red-400 bg-red-500 p-2 transition-all hover:bg-red-400 group-hover:block group-hover:animate-[300ms_ease-in-out_alternate_anime]">
                                Delete
                            </button>
                        </div>
                        <div class="grid grid-cols-2 justify-items-start w-fit text-justify place-self-center">
                            <div>
                                <h5 class="pt-2 font-medium tracking-tight text-blue-600 dark:text-white">RH:</h5>
                                <h5 class="pt-2 font-medium tracking-tight text-red-600 dark:text-white">T:</h5>
                                <h5 class="pt-2 font-medium tracking-tight text-purple-600 dark:text-white">L:</h5>
                                <h5 class="pt-2 font-medium tracking-tight text-orange-600 dark:text-white">
                                    CO<sub>2</sub>:
                                </h5>
                                <h5 class="pt-2 font-medium tracking-tight text-green-600 dark:text-white">O:</h5>
                            </div>
                            <div>
                                <h5 class="pt-2 font-medium tracking-tight text-blue-600 dark:text-white">15%</h5>
                                <h5 class="pt-2 font-medium tracking-tight text-red-600 dark:text-white">45 C</h5>
                                <h5 class="pt-2 font-medium tracking-tight text-purple-600 dark:text-white">155 aux</h5>
                                <h5 class="pt-2 font-medium tracking-tight text-orange-600 dark:text-white">450</h5>
                                <h5 class="pt-2 font-medium tracking-tight text-green-600 dark:text-white">1</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</div>
<div id="modal" class="relative hidden z-10" aria-labelledby="modal-title" role="dialog" aria-modal="true">
    <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity"></div>
    <div class="fixed inset-0 z-10 overflow-y-auto">
        <div class="flex min-h-full items-center justify-center p-4 text-center">
            <div class="relative w-full transform overflow-hidden rounded-lg bg-white text-left shadow-xl transition-all sm:max-w-lg">
                <form method="post">
                    <div class="bg-white px-4 pt-5 pb-4">
                        <div class="flex items-center">
                            <div class="flex h-12 w-12 flex-shrink-0 items-center justify-center rounded-full bg-blue-100">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                     stroke-width="1.5"
                                     stroke="currentColor" class="h-6 w-6">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                          d="M12 4.5v15m7.5-7.5h-15"></path>
                                </svg>
                            </div>
                            <h3 class="ml-6 text-lg font-medium leading-6 text-gray-900" id="modal-title">Add
                                endpoint</h3>
                        </div>
                        <div class="text-center">
                            <div class="m-2 p-4 text-sm text-gray-500">
                                <div class="mb-6 flex items-center">
                                    <label class="mr-3 min-w-fit font-bold text-gray-500"
                                           for="name">Name</label>
                                    <input type="text" name="name" id="name" autocomplete="off" tabindex="-5"
                                           class="w-full rounded-md border-2 border-gray-300 p-2 font-mono font-semibold leading-tight shadow-sm outline-none focus:border-cyan-500"/>
                                </div>
                                <div class="flex items-center">
                                    <label class="mr-3 min-w-fit font-bold text-gray-500" for="ip-address">IP
                                        Address</label>
                                    <input type="text" name="ipAddress" id="ip-address" autocomplete="off"
                                           class="w-full rounded-md border-2 border-gray-300 p-2 font-mono font-semibold leading-tight shadow-sm outline-none focus:border-cyan-500"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bg-gray-50 px-4 py-3 text-end space-x-4">
                        <button id="cancel-add-endpoint" type="button">
                            <div class="w-fit rounded border border-gray-400 bg-gray-300 p-2.5 shadow-sm transition hover:scale-90">
                                Cancel
                            </div>
                        </button>
                        <button id="confirm-add-endpoint" type="submit">
                            <div class="w-fit rounded border border-cyan-400 bg-cyan-300 p-2.5 shadow-sm transition hover:scale-90">
                                Add
                            </div>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="./endpoints/endpointsView.js"></script>
</body>
</html>

