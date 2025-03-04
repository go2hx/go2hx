package stdgo._internal.math.big;
function _checkMul(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var _x:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _y:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _z1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        @:check2 _x.setBytes(_a);
        @:check2 _y.setBytes(_b);
        @:check2 _z1.mul((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        var _z2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        @:check2 _z2.setBytes(stdgo._internal.math.big.Big__mulbytes._mulBytes(_a, _b));
        return @:check2 _z1.cmp((stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) == ((0 : stdgo.GoInt));
    }
