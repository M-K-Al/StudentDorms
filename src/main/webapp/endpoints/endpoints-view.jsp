<%--
  Created by IntelliJ IDEA.
  User: s201848020
  Date: 9/8/2022
  Time: 6:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>Endpoints</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <%--TODO: change to dist--%>
    <link href="./styles/src/style.css" rel="stylesheet">
</head>
<body>
<c:set var="isAdmin" value="${pageContext.request.isUserInRole('admin')}"/>

<div class="w-full">
    <jsp:include page="/common/header.jsp"/>
    <div class="m-auto max-w-7xl">
        <div class="relative m-6 mx-16 flex items-center min-w-screen">
            <p class="w-fit text-lg font-medium">Total endpoints:
                <span id="endpoint-count"><c:out value="${endpoints.size()}"/></span>
            </p>
            <c:if test="${isAdmin}">
                <div class="relative ml-auto flex cursor-pointer items-center gap-2">
                    <div id="add-endpoint-dialog" tabindex="0"
                         class="w-fit rounded border border-blue-300 bg-blue-300 p-2.5 shadow-sm transition hover:scale-90">
                        Add endpoint
                    </div>
                </div>
            </c:if>
        </div>
        <c:if test="${endpoints.isEmpty()}">
            <h2 class="m-20 text-center text-lg font-semibold">No endpoints</h2>
        </c:if>
        <div class="m-4 grid gap-3 text-center md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 lg:m-6">
            <c:forEach var="endpoint" items="${endpoints}">
                <c:set var="id" value="${endpoint.key}"/>
                <c:set var="data" value="${endpoint.value}"/>
                <a id="${id}"
                   class="${isAdmin ? 'group' : ''}  cursor-pointer p-4 w-full bg-gray-50 rounded-lg border border-gray-400 shadow-md hover:bg-gray-300">
                    <div class="grid grid-cols-2 min-h-[10rem]">
                        <div class="grid content-around">
                            <div class="absolute grid w-fit place-items-center gap-6 place-self-center transition-all duration-300 group-hover:-translate-y-10 group-hover:gap-2">
                                <h5 class="break-all text-xl font-bold tracking-tight text-gray-900 md:max-w-[10ch]">
                                    <c:out value="${data.name()}"/>
                                </h5>
                                <h5 class="max-w-[15ch] break-all font-medium tracking-tight text-gray-500">
                                    <c:out value="${data.ip()}"/>
                                </h5>
                            </div>
                            <c:if test="${isAdmin}">
                                <div id="delete-endpoint-${id}" title="${id}"
                                     class="mt-20 w-2/3 place-self-center hidden rounded-md border border-red-400 bg-red-500 p-2 transition hover:bg-red-400 group-hover:block group-hover:animate-[300ms_ease-in-out_alternate_anime]">
                                    Delete
                                </div>
                            </c:if>
                        </div>
                        <div class="grid grid-cols-2 justify-items-start w-fit text-justify place-self-center group-hover:blur-[1px]">
                            <div class="space-y-1">
                                <h5 class="font-medium tracking-tight text-blue-600 ${(rh = data.relativeHumidity()) == null?'hidden':''}">
                                    RH:</h5>
                                <c:forEach var="i" begin="1" end="${fn:length(data.temperature())}">
                                    <h5 class="font-medium tracking-tight text-red-600">T<sub>${i}</sub>:</h5>
                                </c:forEach>
                                <h5 class="font-medium tracking-tight text-purple-600 ${(i = data.illuminance()) == null?'hidden':''}">
                                    L:</h5>
                                <h5 class="font-medium tracking-tight text-orange-600 ${(co2 = data.co2()) == null?'hidden':''}">
                                    CO<sub>2</sub>:
                                </h5>
                                <h5 class="font-medium tracking-tight text-green-600 ${(o = data.occupancy()) == null?'hidden':''}">
                                    O:</h5>
                            </div>
                            <div class="space-y-1">
                                <h5 class="font-medium tracking-tight text-blue-600">${rh == null?'': rh+=' %'}</h5>
                                <c:forEach var="temp" items="${data.temperature()}">
                                    <h5 class="font-medium tracking-tight text-red-600">${temp} °C</h5>
                                </c:forEach>
                                <h5 class="font-medium tracking-tight text-purple-600">${i == null?'': i+=' aux'}</h5>
                                <h5 class="font-medium tracking-tight text-orange-600">${co2 == null?'': i+=' ppm'}</h5>
                                <h5 class="font-medium tracking-tight text-green-600">${o == null?'': i+=' ppl'}</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>
    </div>
</div>
<c:if test="${isAdmin}">
    <div id="modal" class="relative z-10 hidden" aria-labelledby="modal-title" role="dialog" aria-modal="true">
        <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity"></div>
        <div class="fixed inset-0 z-10 overflow-y-auto">
            <div class="flex min-h-full items-center justify-center p-4 text-center">
                <div class="relative w-full transform overflow-hidden rounded-lg bg-white text-left shadow-xl transition-all sm:max-w-lg">
                    <form id="add-endpoint" action="endpoints?action=add" method="post">
                        <div class="bg-white px-4 pt-6">
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
                                        <label class="mr-3 min-w-fit font-bold text-gray-500" for="name">Name</label>
                                        <input type="text" name="name" id="name" autocomplete="off" maxlength="18"
                                               class="w-full rounded-md border-2 border-gray-300 p-2 font-mono font-semibold leading-tight shadow-sm outline-none focus:border-cyan-500"/>
                                    </div>
                                    <div class="flex flex-col space-y-4">
                                        <div class="flex items-center">
                                            <label class="mr-3 min-w-fit font-bold text-gray-500" for="ip-address">IP
                                                Address</label>
                                            <input type="text" name="ipAddress" id="ip-address" autocomplete="off"
                                                   maxlength="18"
                                                   class="w-full rounded-md border-2 border-gray-300 p-2 font-mono font-semibold leading-tight shadow-sm outline-none focus:border-cyan-500"/>
                                        </div>
                                        <div class="flex flex-col space-y-4">
                                            <h4 id="discover-ip-header"></h4>
                                            <div id="discovered-ips-list" class="hidden flex flex-col space-y-2 py-2">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="flex justify-end px-4 py-3 space-x-4">
                            <div id="cancel-add-endpoint" tabindex="0"
                                 class="w-fit cursor-pointer rounded border border-gray-400 bg-gray-300 p-2.5 shadow-sm transition hover:scale-90">
                                Cancel
                            </div>

                            <div id="confirm-add-endpoint" tabindex="0"
                                 class="w-fit cursor-pointer rounded border border-blue-400 bg-blue-300 p-2.5 shadow-sm transition hover:scale-90">
                                Add
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</c:if>
<script src="./endpoints/endpointsView.js"></script>
</body>
</html>

