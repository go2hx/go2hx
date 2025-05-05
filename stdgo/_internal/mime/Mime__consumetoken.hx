package stdgo._internal.mime;
function _consumeToken(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _token = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        var _notPos = (stdgo._internal.strings.Strings_indexfunc.indexFunc(_v?.__copy__(), stdgo._internal.mime.Mime__isnottokenchar._isNotTokenChar) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L268"
        if (_notPos == ((-1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L269"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : _v?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                _token = __tmp__._0;
                _rest = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L271"
        if (_notPos == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L272"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _v?.__copy__() };
                _token = __tmp__._0;
                _rest = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L274"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_v.__slice__((0 : stdgo.GoInt), _notPos) : stdgo.GoString)?.__copy__(), _1 : (_v.__slice__(_notPos) : stdgo.GoString)?.__copy__() };
            _token = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
