window.addEventListener("message", function (event) {
    let cordx = event.data.cordx
    let cordy = event.data.cordy
    let cordz = event.data.cordz
    $(".coords").text('X:'+cordx+" Y:"+cordy+' Z:'+cordz);

});