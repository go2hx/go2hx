package stdgo._internal.encoding.asn1;
function _parseIA5String(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _ret = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L459"
        for (__0 => _b in _bytes) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L460"
            if ((_b >= (128 : stdgo.GoUInt8) : Bool)) {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("IA5String contains invalid character" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L462"
                return { _0 : _ret, _1 : _err };
            };
        };
        _ret = (_bytes : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L466"
        return { _0 : _ret, _1 : _err };
    }
