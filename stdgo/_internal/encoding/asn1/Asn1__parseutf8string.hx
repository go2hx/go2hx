package stdgo._internal.encoding.asn1;
function _parseUTF8String(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _ret = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L482"
        if (!stdgo._internal.unicode.utf8.Utf8_valid.valid(_bytes)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L483"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("asn1: invalid UTF-8 string" : stdgo.GoString)) };
                _ret = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L485"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_bytes : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
