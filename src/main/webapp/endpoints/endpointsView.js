$("#add-endpoint").click(function () {
    $("#modal").removeClass("hidden");
});
$("#cancel-add-endpoint").click(function () {
    $("#modal").addClass("hidden");
});
$("button[id^='delete-endpoint-']").click(function () {
    $.ajax({
        type: 'POST',
        url: window.location.href + "?action=delete",
        data: {id: this.name},
        dataType: "text"
    });
})

$("a").click(function (e) {
    if (e.target.tagName.toLowerCase() === "button") {
        window.location.href = window.location["href"];
        return;
    }
    window.location.href = window.location.origin + "/endpoint?id=" + this.id;

})