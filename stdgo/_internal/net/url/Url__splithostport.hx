package stdgo._internal.net.url;
function _splitHostPort(_hostPort:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _host = ("" : stdgo.GoString), _port = ("" : stdgo.GoString);
        _host = _hostPort?.__copy__();
        var _colon = (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_host?.__copy__(), (58 : stdgo.GoUInt8)) : stdgo.GoInt);
        if (((_colon != (-1 : stdgo.GoInt)) && stdgo._internal.net.url.Url__validoptionalport._validOptionalPort((_host.__slice__(_colon) : stdgo.GoString)?.__copy__()) : Bool)) {
            {
                final __tmp__0 = (_host.__slice__(0, _colon) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_host.__slice__((_colon + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _host = __tmp__0;
                _port = __tmp__1;
            };
        };
        if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString)) && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool)) {
            _host = (_host.__slice__((1 : stdgo.GoInt), ((_host.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return { _0 : _host, _1 : _port };
    }
