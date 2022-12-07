<%--
  Created by IntelliJ IDEA.
  User: s201848020
  Date: 9/16/2022
  Time: 6:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <title>${endpoint.name()}</title>

    <script src="https://cdn.tailwindcss.com"></script>

    <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/base/jquery-ui.css' rel='stylesheet'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

    <script src="https://code.highcharts.com/highcharts.js"></script>

    <link rel="stylesheet" href="./endpoints/endpoint-view.css">

</head>
<body class="flex min-h-screen flex-col">
<div class="w-full">
    <jsp:include page="/common/header.jsp"/>

    <div class="mx-auto my-8 mb-20 flex max-w-5xl flex-1 flex-col self-center">
        <section>
            <div class="m-2 grid grid-cols-1 place-items-center gap-4 space-y-8 lg:m-6 lg:grid-cols-2">
                <figure class="col-span-1 w-10/12 highcharts-figure lg:col-span-2 lg:w-full">
                    <div id="t-container"></div>
                </figure>
                <figure class="w-10/12 highcharts-figure lg:w-full">
                    <div id="co2-container"></div>
                </figure>
                <figure class="w-10/12 highcharts-figure lg:w-full">
                    <div id="rh-container"></div>
                </figure>
                <figure class="w-10/12 highcharts-figure lg:w-full">
                    <div id="l-container"></div>
                </figure>
                <figure class="w-10/12 highcharts-figure lg:w-full">
                    <div id="o-container"></div>
                </figure>
            </div>
        </section>

        <div class="mx-8">
            <div class="space-y-10">
                <section class="space-y-10">
                    <div class="flex items-center space-x-4">
                        <h5 class="text-lg font-semibold leading-none text-gray-900">Device1</h5>
                        <div value="30" class="my-6 w-full cursor-pointer rounded-lg range"></div>
                    </div>
                    <div class="flex items-center space-x-4">
                        <h5 class="text-lg font-semibold leading-none text-gray-900">Device2</h5>
                        <div value="50" class="my-6 w-full cursor-pointer rounded-lg range"></div>
                    </div>
                    <div class="flex items-center space-x-4">
                        <h5 class="text-lg font-semibold leading-none text-gray-900">Device3</h5>
                        <div value="75" class="my-6 w-full cursor-pointer rounded-lg range"></div>
                    </div>
                </section>

                <section class="flex space-x-10">
                    <div class="flex items-center space-x-4">
                        <label for="device1" class="text-lg font-semibold leading-none text-gray-900">Device1</label>
                        <input type="number" name="device1" id="device1"
                               class="w-full rounded-md border-2 border-gray-300 p-2 shadow-sm outline-none focus:border-[#7CB5EC]">
                    </div>
                    <div class="flex items-center space-x-4">
                        <label for="device2" class="text-lg font-semibold leading-none text-gray-900">Device2</label>
                        <input type="number" name="device2" id="device2"
                               class="w-full rounded-md border-2 border-gray-300 p-2 shadow-sm outline-none focus:border-[#7CB5EC]">
                    </div>
                    <div class="flex items-center space-x-4">
                        <label for="device3" class="text-lg font-semibold leading-none text-gray-900">Device3</label>
                        <input type="number" name="device3" id="device3"
                               class="w-full rounded-md border-2 border-gray-300 p-2 shadow-sm outline-none focus:border-[#7CB5EC]">
                    </div>
                    <div class="flex items-center space-x-4">
                        <label for="device4" class="text-lg font-semibold leading-none text-gray-900">Device4</label>
                        <input type="number" name="device4" id="device4"
                               class="w-full rounded-md border-2 border-gray-300 p-2 shadow-sm outline-none focus:border-[#7CB5EC]">
                    </div>
                </section>
            </div>

        </div>
    </div>

</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
<script src="./endpoints/endpointView.js"></script>
</body>
</html>
