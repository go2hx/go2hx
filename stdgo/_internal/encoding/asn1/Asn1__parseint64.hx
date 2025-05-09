package stdgo._internal.encoding.asn1;
function _parseInt64(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _ret = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        _err = stdgo._internal.encoding.asn1.Asn1__checkinteger._checkInteger(_bytes);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L96"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L97"
            return { _0 : _ret, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L99"
        if (((_bytes.length) > (8 : stdgo.GoInt) : Bool)) {
            _err = stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("integer too large" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError));
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L102"
            return { _0 : _ret, _1 : _err };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L104"
        {
            var _bytesRead = (0 : stdgo.GoInt);
            while ((_bytesRead < (_bytes.length) : Bool)) {
                _ret = (_ret << ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
_ret = (_ret | ((_bytes[(_bytesRead : stdgo.GoInt)] : stdgo.GoInt64)) : stdgo.GoInt64);
                _bytesRead++;
            };
        };
        _ret = (_ret << (((64 : stdgo.GoUInt8) - ((_bytes.length : stdgo.GoUInt8) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoInt64);
        _ret = (_ret >> (((64 : stdgo.GoUInt8) - ((_bytes.length : stdgo.GoUInt8) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L112"
        return { _0 : _ret, _1 : _err };
    }
