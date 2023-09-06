$(document).ready(function () {
    var container = 0;
    $('img').click(function (e) {
        var nombre_imagen = $(this).attr('data-id')
        $(this).attr('src', nombre_imagen);
    });
});