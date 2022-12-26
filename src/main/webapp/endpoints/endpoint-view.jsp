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

        <div class="mx-8 mt-12">
            <div class="space-y-10">

                <section class="space-y-10">

                    <div class="space-y-4">
                        <div class="flex items-center justify-between gap-4">
                            <h4 class="min-w-fit text-xl font-semibold leading-none text-gray-900">AC</h4>
                            <div class="w-fit text-md font-medium rounded text-white text-center cursor-pointer bg-[#E87D62] py-2 px-3 shadow-md transition hover:scale-90"
                                 id="ac-button">
                                Turn off
                            </div>
                        </div>

                        <div class="space-y-5">
                            <div class="ml-6 flex items-center space-x-4">
                                <h5 class="min-w-fit text-lg font-semibold leading-none text-gray-900">Temperature
                                    (°C)</h5>
                                <div suffix=" °C" min="12" max="30"
                                     class="my-6 h-3 w-full cursor-pointer rounded-lg range">
                                    <div class="pointer-events-none mt-6 flex justify-between">
                                        <h6 class="min-w-fit text-sm leading-none text-gray-900 min-range"></h6>
                                        <h6 class="min-w-fit text-sm leading-none text-gray-900 max-range"></h6>
                                    </div>
                                </div>
                            </div>
                            <div class="ml-6 flex items-center space-x-4">
                                <h5 class="min-w-fit text-lg font-semibold leading-none text-gray-900">Fan speed</h5>
                                <div min="1" max="5" class="my-6 h-3 w-full cursor-pointer rounded-lg range">
                                    <div class="pointer-events-none mt-6 flex justify-between">
                                        <h6 class="min-w-fit text-sm leading-none text-gray-900 min-range"></h6>
                                        <h6 class="min-w-fit text-sm leading-none text-gray-900 max-range"></h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div>
                        <div class="flex items-center justify-between gap-4">
                            <h4 class="min-w-fit text-xl font-semibold leading-none text-gray-900">Heater</h4>
                            <div class="w-fit text-md font-medium rounded text-white text-center cursor-pointer bg-[#7CB5EC] py-2 px-3 shadow-md transition hover:scale-90"
                                 id="heater-button">
                                Turn on
                            </div>
                        </div>

                        <div class="ml-6 flex items-center space-x-4">
                            <h5 class="min-w-fit text-lg font-semibold leading-none text-gray-900">Temperature (°C)</h5>
                            <div suffix=" °C" min="20" max="40" class="my-6 h-3 w-full cursor-pointer rounded-lg range disabled">
                                <div class="pointer-events-none mt-6 flex justify-between">
                                    <h6 class="min-w-fit text-sm leading-none text-gray-900 min-range"></h6>
                                    <h6 class="min-w-fit text-sm leading-none text-gray-900 max-range"></h6>
                                </div>
                            </div>
                        </div>
                    </div>


                </section>

                <section class="flex space-x-10">
                    <%--                    <div class="flex items-center justify-center space-x-4">--%>
                    <%--                        <div class="form-check form-switch">--%>
                    <%--                            <label class="inline-block text-gray-800 form-check-label"--%>
                    <%--                                   for="flexSwitchCheckDefault">It</label>--%>
                    <%--                            <input class="float-left -ml-10 h-5 w-9 cursor-pointer appearance-none rounded-full bg-white bg-gray-300 bg-contain bg-no-repeat align-top shadow-sm form-check-input focus:outline-none"--%>
                    <%--                                   type="checkbox" role="switch" id="flexSwitchCheckDefault">--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                </section>

            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
<script src="./endpoints/endpointView.js"></script>
</body>
</html>
