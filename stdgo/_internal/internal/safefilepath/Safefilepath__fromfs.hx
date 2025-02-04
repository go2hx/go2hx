package stdgo._internal.internal.safefilepath;
function _fromFS(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        if (false) {
            if ((((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.internal.safefilepath.Safefilepath__errinvalidpath._errInvalidPath };
            };
        };
        for (_i => _ in _path) {
            if (_path[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.internal.safefilepath.Safefilepath__errinvalidpath._errInvalidPath };
            };
        };
        return { _0 : _path?.__copy__(), _1 : (null : stdgo.Error) };
    }
