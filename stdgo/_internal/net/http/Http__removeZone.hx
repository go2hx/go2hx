package stdgo._internal.net.http;
function _removeZone(_host:stdgo.GoString):stdgo.GoString {
        if (!stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString))) {
            return _host?.__copy__();
        };
        var _i = (stdgo._internal.strings.Strings_lastIndex.lastIndex(_host?.__copy__(), ("]" : stdgo.GoString)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return _host?.__copy__();
        };
        var _j = (stdgo._internal.strings.Strings_lastIndex.lastIndex((_host.__slice__(0, _i) : stdgo.GoString)?.__copy__(), ("%" : stdgo.GoString)) : stdgo.GoInt);
        if ((_j < (0 : stdgo.GoInt) : Bool)) {
            return _host?.__copy__();
        };
        return ((_host.__slice__(0, _j) : stdgo.GoString) + (_host.__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
