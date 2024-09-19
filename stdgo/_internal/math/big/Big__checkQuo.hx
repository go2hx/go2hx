package stdgo._internal.math.big;
function _checkQuo(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _u = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_x);
        var _v = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setBytes(_y);
        if ((_v._abs.length) == ((0 : stdgo.GoInt))) {
            return true;
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).quoRem(_u, _v, _r), _q:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, _r:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._1;
        if ((_r.cmp(_v) >= (0 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _uprime = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).set(_q);
        _uprime.mul(_uprime, _v);
        _uprime.add(_uprime, _r);
        return _uprime.cmp(_u) == ((0 : stdgo.GoInt));
    }
