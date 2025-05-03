package stdgo._internal.math.big;
function _checkGcd(_aBytes:stdgo.Slice<stdgo.GoUInt8>, _bBytes:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _a = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_aBytes);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_bBytes);
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).gCD(_x, _y, _a, _b);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L716"
        _x.mul(_x, _a);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L717"
        _y.mul(_y, _b);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L718"
        _x.add(_x, _y);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L720"
        return _x.cmp(_d) == ((0 : stdgo.GoInt));
    }
