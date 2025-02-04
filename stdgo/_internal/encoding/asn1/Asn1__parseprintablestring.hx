package stdgo._internal.encoding.asn1;
function _parsePrintableString(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _ret = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        for (__0 => _b in _bytes) {
            if (!stdgo._internal.encoding.asn1.Asn1__isprintable._isPrintable(_b, true, true)) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("PrintableString contains invalid character" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                return { _0 : _ret, _1 : _err };
            };
        };
        _ret = (_bytes : stdgo.GoString)?.__copy__();
        return { _0 : _ret, _1 : _err };
    }
