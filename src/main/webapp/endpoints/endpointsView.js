$(document).ready(function () {
    let discovering = null;
    $("#add-endpoint-dialog").click(function () {
        $("#modal").removeClass("hidden");
        let previousResponse = null;
        const discoverIPsListHeader = $("#discover-ip-header").text("Discovering IPs...");
        // updateDiscoveryList(); // TODO uncomment
        discovering = setInterval(updateDiscoveryList, 3000);

        function updateDiscoveryList() {
            $.ajax({
                type: 'GET', url: window.location.origin + "/discoverIP", "success": function (responseText) {
                    if (responseText === previousResponse) return;
                    previousResponse = responseText;

                    const discoveredIPsList = $("#discovered-ips-list");
                    discoveredIPsList.empty();

                    if (!responseText) {
                        discoverIPsListHeader.text("No IPs were found.");
                        return;
                    }

                    for (const ip of responseText.split(",")) {
                        discoveredIPsList.append("<div class='discovered-ip transition hover:scale-90 bg-gray-200 w-2/3 shadow text-gray-700 place-self-center duration-200 rounded-xl py-2.5 cursor-pointer\'>" + ip + "</div>");
                    }

                    discoverIPsListHeader.text("Discovered IPs:");
                    discoveredIPsList.removeClass("hidden");

                    $(".discovered-ip").click(function () {
                        $("#ip-address").val($(this).text());
                    });
                }
            });
        }
    });

    $("#cancel-add-endpoint").click(function () {
        $("#modal").addClass("hidden");
        clearInterval(discovering);
        $("#discovered-ips-list").addClass("hidden");
    });

    $("#confirm-add-endpoint").click(function () {
        $("#add-endpoint").submit();
    });

    $("[id^='delete-endpoint-']").click(function (e) {
        $.ajax({
            type: 'POST',
            url: window.location.href + "?action=delete",
            data: {id: this.title},
            dataType: "text"
        });
        e.stopPropagation();
        window.location.href = window.location["href"];
    });

    $(".endpoint").click(function () {
        window.location.href = window.location.origin + "/endpoint?id=" + this.id;
    });
});