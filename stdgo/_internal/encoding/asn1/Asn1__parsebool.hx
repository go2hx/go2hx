package stdgo._internal.encoding.asn1;
function _parseBool(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _ret = false, _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L55"
        if ((_bytes.length) != ((1 : stdgo.GoInt))) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("invalid boolean" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L57"
            return { _0 : _ret, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L63"
        {
            final __value__ = _bytes[(0 : stdgo.GoInt)];
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _ret = false;
            } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                _ret = true;
            } else {
                _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError(("invalid boolean" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_syntaxerror.SyntaxError));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L72"
        return { _0 : _ret, _1 : _err };
    }
