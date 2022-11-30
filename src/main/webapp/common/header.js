$("#menu-button").on("focusout", async function () {
    await new Promise(r => setTimeout(r, 150));
    $("#menu").addClass("hidden");
}).on("click", function () {
    $("#menu").toggleClass("hidden");
});
