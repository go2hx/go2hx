package stdgo._internal.encoding.asn1;
function _parseNumericString(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _ret = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        for (__0 => _b in _bytes) {
            if (!stdgo._internal.encoding.asn1.Asn1__isNumeric._isNumeric(_b)) {
                return { _0 : _ret = stdgo.Go.str()?.__copy__(), _1 : _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError(("NumericString contains invalid character" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_SyntaxError.SyntaxError)) };
            };
        };
        return { _0 : _ret = (_bytes : stdgo.GoString)?.__copy__(), _1 : _err = (null : stdgo.Error) };
    }
