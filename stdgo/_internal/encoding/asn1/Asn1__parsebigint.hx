package stdgo._internal.encoding.asn1;
function _parseBigInt(_bytes:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L136"
        {
            var _err = (stdgo._internal.encoding.asn1.Asn1__checkinteger._checkInteger(_bytes) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L137"
                return { _0 : null, _1 : _err };
            };
        };
        var _ret = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L140"
        if ((((_bytes.length) > (0 : stdgo.GoInt) : Bool) && ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (128 : stdgo.GoUInt8)) : Bool)) {
            var _notBytes = (new stdgo.Slice<stdgo.GoUInt8>((_bytes.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L143"
            for (_i => _ in _notBytes) {
                _notBytes[(_i : stdgo.GoInt)] = (-1 ^ _bytes[(_i : stdgo.GoInt)]);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L146"
            _ret.setBytes(_notBytes);
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L147"
            _ret.add(_ret, stdgo._internal.encoding.asn1.Asn1__bigone._bigOne);
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L148"
            _ret.neg(_ret);
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L149"
            return { _0 : _ret, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L151"
        _ret.setBytes(_bytes);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/asn1.go#L152"
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
