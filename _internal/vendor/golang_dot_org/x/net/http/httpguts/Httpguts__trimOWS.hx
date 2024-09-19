package _internal.vendor.golang_dot_org.x.net.http.httpguts;
function _trimOWS(_x:stdgo.GoString):stdgo.GoString {
        while ((((_x.length) > (0 : stdgo.GoInt) : Bool) && _internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__isOWS._isOWS(_x[(0 : stdgo.GoInt)]) : Bool)) {
            _x = (_x.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        while ((((_x.length) > (0 : stdgo.GoInt) : Bool) && _internal.vendor.golang_dot_org.x.net.http.httpguts.Httpguts__isOWS._isOWS(_x[((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            _x = (_x.__slice__(0, ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _x?.__copy__();
    }
