package stdgo._internal.crypto.ecdsa;
function _hashToInt(_hash:stdgo.Slice<stdgo.GoUInt8>, _c:stdgo._internal.crypto.elliptic.Elliptic_curve.Curve):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _orderBits = (_c.params().n.bitLen() : stdgo.GoInt);
        var _orderBytes = (((_orderBits + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L39"
        if (((_hash.length) > _orderBytes : Bool)) {
            _hash = (_hash.__slice__(0, _orderBytes) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _ret = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_hash);
        var _excess = (((_hash.length) * (8 : stdgo.GoInt) : stdgo.GoInt) - _orderBits : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L45"
        if ((_excess > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L46"
            _ret.rsh(_ret, (_excess : stdgo.GoUInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ecdsa/ecdsa_legacy.go#L48"
        return _ret;
    }
