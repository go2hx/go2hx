package stdgo._internal.math.big;
function _checkQuo(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _u = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_x);
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_y);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L410"
        if (((@:checkr _v ?? throw "null pointer dereference")._abs.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L411"
            return true;
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).quoRem(_u, _v, _r), _q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L417"
        if ((_r.cmp(_v) >= (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L418"
            return false;
        };
        var _uprime = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_q);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L422"
        _uprime.mul(_uprime, _v);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L423"
        _uprime.add(_uprime, _r);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L425"
        return _uprime.cmp(_u) == ((0 : stdgo.GoInt));
    }
