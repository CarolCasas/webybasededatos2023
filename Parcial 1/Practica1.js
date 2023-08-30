$(document).ready(function(){
    //alert("Funciona JQuery");
    $("#boton1").on("click", function(){
        //alert("Funciona Click");
        console.log("Funciona click boton1")
        $("#texto1").html("sToi heNaMoRadO dE kUAtRo bEibEz")
    });
    $("#texto1").hover(function(){
        $(this).css("background-color", "pink");
        $(this).css("font-size", "50px");
    }, function () {
        $(this).css("background-color", "white");
        $(this).css("font-size", "20px");
    }
    );
    $("#boton2").click(function (e) {
        $("#imagen1"). fadeToggle("slow");
    });
});