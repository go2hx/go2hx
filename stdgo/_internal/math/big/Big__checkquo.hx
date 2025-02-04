package stdgo._internal.math.big;
function _checkQuo(_x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _u = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_x);
        var _v = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_y);
        if (((@:checkr _v ?? throw "null pointer dereference")._abs.length) == ((0 : stdgo.GoInt))) {
            return true;
        };
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).quoRem(_u, _v, _r), _q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1;
        if ((@:check2r _r.cmp(_v) >= (0 : stdgo.GoInt) : Bool)) {
            return false;
        };
        var _uprime = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_q);
        @:check2r _uprime.mul(_uprime, _v);
        @:check2r _uprime.add(_uprime, _r);
        return @:check2r _uprime.cmp(_u) == ((0 : stdgo.GoInt));
    }
