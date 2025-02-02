package stdgo._internal.net.http.cookiejar;
function _hasPort(_host:stdgo.GoString):Bool {
        var _colons = (stdgo._internal.strings.Strings_count.count(_host?.__copy__(), (":" : stdgo.GoString)) : stdgo.GoInt);
        if (_colons == ((0 : stdgo.GoInt))) {
            return false;
        };
        if (_colons == ((1 : stdgo.GoInt))) {
            return true;
        };
        return ((_host[(0 : stdgo.GoInt)] == (91 : stdgo.GoUInt8)) && stdgo._internal.strings.Strings_contains.contains(_host?.__copy__(), ("]:" : stdgo.GoString)) : Bool);
    }
