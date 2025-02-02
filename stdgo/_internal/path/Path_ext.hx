package stdgo._internal.path;
function ext(_path:stdgo.GoString):stdgo.GoString {
        {
            var _i = ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while (((_i >= (0 : stdgo.GoInt) : Bool) && (_path[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                if (_path[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    return (_path.__slice__(_i) : stdgo.GoString).__copy__();
                };
                _i--;
            };
        };
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
