$("#add-endpoint-dialog").click(function () {
    $("#modal").removeClass("hidden");
});
$("#cancel-add-endpoint").click(function () {
    $("#modal").addClass("hidden");
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
})

$("a").click(function () {
    window.location.href = window.location.origin + "/endpoint?id=" + this.id;
})