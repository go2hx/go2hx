package stdgo._internal.net.http.cookiejar;
function _defaultPath(_path:stdgo.GoString):stdgo.GoString {
        if (((_path.length == (0 : stdgo.GoInt)) || (_path[(0 : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            return ("/" : stdgo.GoString);
        };
        var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_path?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
        if (_i == ((0 : stdgo.GoInt))) {
            return ("/" : stdgo.GoString);
        };
        return (_path.__slice__(0, _i) : stdgo.GoString)?.__copy__();
    }
