package stdgo._internal.math.big;
function _checkLehmerExtGcd(_aBytes:stdgo.Slice<stdgo.GoUInt8>, _bBytes:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _a = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_aBytes);
        var _b = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_bBytes);
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        if (((@:check2r _a.sign() <= (0 : stdgo.GoInt) : Bool) || (@:check2r _b.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return true;
        };
        var _d = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)._lehmerGCD(_x, _y, _a, _b);
        var __tmp__ = stdgo._internal.math.big.Big__euclidextgcd._euclidExtGCD(_a, _b), _d0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _x0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1, _y0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._2;
        return ((@:check2r _d.cmp(_d0) == ((0 : stdgo.GoInt)) && @:check2r _x.cmp(_x0) == ((0 : stdgo.GoInt)) : Bool) && (@:check2r _y.cmp(_y0) == (0 : stdgo.GoInt)) : Bool);
    }
