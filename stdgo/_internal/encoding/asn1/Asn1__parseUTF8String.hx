package stdgo._internal.encoding.asn1;
function _parseUTF8String(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _ret = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        if (!stdgo._internal.unicode.utf8.Utf8_valid.valid(_bytes)) {
            return { _0 : _ret = stdgo.Go.str()?.__copy__(), _1 : _err = stdgo._internal.errors.Errors_new_.new_(("asn1: invalid UTF-8 string" : stdgo.GoString)) };
        };
        return { _0 : _ret = (_bytes : stdgo.GoString)?.__copy__(), _1 : _err = (null : stdgo.Error) };
    }
