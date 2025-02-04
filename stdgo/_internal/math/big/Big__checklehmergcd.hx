package stdgo._internal.math.big;
function _checkLehmerGcd(_aBytes:stdgo.Slice<stdgo.GoUInt8>, _bBytes:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _a = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_aBytes);
        var _b = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBytes(_bBytes);
        if (((@:check2r _a.sign() <= (0 : stdgo.GoInt) : Bool) || (@:check2r _b.sign() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
            return true;
        };
        var _d = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)._lehmerGCD(null, null, _a, _b);
        var __tmp__ = stdgo._internal.math.big.Big__euclidextgcd._euclidExtGCD(_a, _b), _d0:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._1, __9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._2;
        return @:check2r _d.cmp(_d0) == ((0 : stdgo.GoInt));
    }
