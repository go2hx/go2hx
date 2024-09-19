package stdgo._internal.net.http;
function _cleanPath(_p:stdgo.GoString):stdgo.GoString {
        if (_p == (stdgo.Go.str())) {
            return ("/" : stdgo.GoString);
        };
        if (_p[(0 : stdgo.GoInt)] != ((47 : stdgo.GoUInt8))) {
            _p = (("/" : stdgo.GoString) + _p?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var _np = (stdgo._internal.path.Path_clean.clean(_p?.__copy__())?.__copy__() : stdgo.GoString);
        if (((_p[((_p.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) && (_np != ("/" : stdgo.GoString)) : Bool)) {
            if (((_p.length == ((_np.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) && stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_p?.__copy__(), _np?.__copy__()) : Bool)) {
                _np = _p?.__copy__();
            } else {
                _np = (_np + (("/" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        return _np?.__copy__();
    }
