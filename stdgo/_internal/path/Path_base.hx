package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function base(_path:stdgo.GoString):stdgo.GoString {
        if (_path == (stdgo.Go.str())) {
            return ("." : stdgo.GoString);
        };
        while ((((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            _path = (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        {
            var _i = (stdgo._internal.path.Path__lastSlash._lastSlash(_path?.__copy__()) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _path = (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        if (_path == (stdgo.Go.str())) {
            return ("/" : stdgo.GoString);
        };
        return _path?.__copy__();
    }
