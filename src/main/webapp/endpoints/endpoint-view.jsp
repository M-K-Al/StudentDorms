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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
</head>
<body class="flex min-h-screen flex-col">
<div class="w-full">
    <jsp:include page="/common/header.jsp"/>

    <div class="mx-auto w-full self-center">
        <div class="mx-auto my-4 flex max-w-5xl flex-1 flex-col self-center">
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
        </div>
    </div>

</div>
<script src="./endpoints/endpointView.js"></script>
</body>
</html>
