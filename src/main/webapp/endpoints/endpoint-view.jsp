<%--
  Created by IntelliJ IDEA.
  User: s201848020
  Date: 9/16/2022
  Time: 6:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${endpoint.name()}</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
<div class="w-full">
    <jsp:include page="./common/header.jsp"/>
    <div class="mx-[max(1.75rem,calc(50%-45rem))]">
        <nav class="flex m-6 mx-16" aria-label="Breadcrumb">
            <ol class="inline-flex items-center space-x-1 md:space-x-3">
                <li class="inline-flex items-center">
                    <a href="${pageContext.request.contextPath}/"
                       class="inline-flex items-center text-sm font-medium text-gray-700 hover:text-gray-900">
                        <svg class="w-4 h-4 mr-2" fill="currentColor" viewBox="0 0 20 20"
                             xmlns="http://www.w3.org/2000/svg">
                            <path d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"></path>
                        </svg>
                        Home
                    </a>
                </li>
                <li>
                    <div class="flex items-center">
                        <svg class="w-6 h-6 text-gray-400" fill="currentColor" viewBox="0 0 20 20"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                                  clip-rule="evenodd"></path>
                        </svg>
                        <a href="endpoints"
                           class="ml-1 text-sm font-medium text-gray-700 hover:text-gray-900 md:ml-2">Endpoints</a>
                    </div>
                </li>
                <li aria-current="page">
                    <div class="flex items-center">
                        <svg class="w-6 h-6 text-gray-400" fill="currentColor" viewBox="0 0 20 20"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
                                  clip-rule="evenodd"></path>
                        </svg>
                        <span class="ml-1 text-sm font-medium text-gray-500 md:ml-2">${endpoint.name()}</span>
                    </div>
                </li>
            </ol>
        </nav>
        <div class="flex w-full justify-center">
            <div class="relative overflow-auto rounded-xl">
                <div class="my-8 overflow-hidden">
                    <table class="w-full table-fixed border-collapse last:mb-3">
                        <tbody class="bg-white">
                        <tr class="border transition-all hover:shadow-md">
                            <th class="w-1/3 border-r p-4 pl-8 text-left font-medium text-slate-500 lg:w-1/4">
                                CO2
                            </th>
                            <td class="border-slate-100 p-4 text-slate-500 dark:border-slate-700 dark:text-slate-400">
                                Test
                            </td>
                        </tr>
                        <tr class="border transition-all hover:shadow-md">
                            <th class="border-r p-4 pl-8 text-left font-medium text-slate-500 dark:border-slate-600 dark:text-slate-200">
                                CO2
                            </th>
                            <td class="border-slate-100 p-4 text-slate-500 dark:border-slate-700 dark:text-slate-400">
                                Test
                            </td>
                        </tr>
                        <tr class="border transition-all hover:shadow-md">
                            <th class="border-r p-4 pl-8 text-left font-medium text-slate-500 dark:border-slate-600 dark:text-slate-200">
                                CO2
                            </th>
                            <td class="border-slate-100 p-4 text-slate-500 dark:border-slate-700 dark:text-slate-400">
                                Test
                            </td>
                        </tr>
                        <tr class="border transition-all hover:shadow-md">
                            <th class="border-r p-4 pl-8 text-left font-medium text-slate-500 dark:border-slate-600 dark:text-slate-200">
                                CO2
                            </th>
                            <td class="border-slate-100 p-4 text-slate-500 dark:border-slate-700 dark:text-slate-400">
                                Test
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
