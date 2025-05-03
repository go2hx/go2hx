package stdgo._internal.math.big;
function _checkMul(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _x:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _y:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _z1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L164"
        _x.setBytes(_a);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L165"
        _y.setBytes(_b);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L166"
        _z1.mul((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        var _z2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L169"
        _z2.setBytes(stdgo._internal.math.big.Big__mulbytes._mulBytes(_a, _b));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L171"
        return _z1.cmp((stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) == ((0 : stdgo.GoInt));
    }
