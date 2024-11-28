package stdgo._internal.mime;
function _consumeToken(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _token = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _notPos = (stdgo._internal.strings.Strings_indexFunc.indexFunc(_v?.__copy__(), stdgo._internal.mime.Mime__isNotTokenChar._isNotTokenChar) : stdgo.GoInt);
        if (_notPos == ((-1 : stdgo.GoInt))) {
            return { _0 : _token = _v?.__copy__(), _1 : _rest = stdgo.Go.str()?.__copy__() };
        };
        if (_notPos == ((0 : stdgo.GoInt))) {
            return { _0 : _token = stdgo.Go.str()?.__copy__(), _1 : _rest = _v?.__copy__() };
        };
        return { _0 : _token = (_v.__slice__((0 : stdgo.GoInt), _notPos) : stdgo.GoString)?.__copy__(), _1 : _rest = (_v.__slice__(_notPos) : stdgo.GoString)?.__copy__() };
    }
