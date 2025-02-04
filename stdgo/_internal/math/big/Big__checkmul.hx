package stdgo._internal.math.big;
function _checkMul(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var __0:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), __2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
var _z1 = __2, _y = __1, _x = __0;
        @:check2 _x.setBytes(_a);
        @:check2 _y.setBytes(_b);
        @:check2 _z1.mul((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        var _z2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        @:check2 _z2.setBytes(stdgo._internal.math.big.Big__mulbytes._mulBytes(_a, _b));
        return @:check2 _z1.cmp((stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) == ((0 : stdgo.GoInt));
    }
