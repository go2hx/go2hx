package stdgo._internal.math.big;
function _checkMul(_a:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.Slice<stdgo.GoUInt8>):Bool {
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __2:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _z1 = __2, _y = __1, _x = __0;
        var _y__pointer__ = (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _y__pointer__ = (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _y__pointer__ = (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _y__pointer__ = (stdgo.Go.setRef(_y) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _x__pointer__ = (stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _x.setBytes(_a);
        _y.setBytes(_b);
        _z1.mul(_x__pointer__, _y__pointer__);
        var _z2:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        var _z2__pointer__ = (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _z2__pointer__ = (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _z2__pointer__ = (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _z2__pointer__ = (stdgo.Go.setRef(_z2) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _z2.setBytes(stdgo._internal.math.big.Big__mulBytes._mulBytes(_a, _b));
        return _z1.cmp(_z2__pointer__) == ((0 : stdgo.GoInt));
    }
