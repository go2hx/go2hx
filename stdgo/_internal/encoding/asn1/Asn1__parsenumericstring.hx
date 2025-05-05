package stdgo._internal.encoding.asn1;
function _parseNumericString(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _ret = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L390"
        for (__0 => _b in _bytes) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L391"
            if (!stdgo._internal.encoding.asn1.Asn1__isnumeric._isNumeric(_b)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L392"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("NumericString contains invalid character" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError)) };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L395"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_bytes : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
