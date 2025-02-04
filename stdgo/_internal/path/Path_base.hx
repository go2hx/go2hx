package stdgo._internal.path;
function base(_path:stdgo.GoString):stdgo.GoString {
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            return ("." : stdgo.GoString);
        };
        while ((((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            _path = (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        {
            var _i = (stdgo._internal.path.Path__lastslash._lastSlash(_path?.__copy__()) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _path = (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            return ("/" : stdgo.GoString);
        };
        return _path?.__copy__();
    }
