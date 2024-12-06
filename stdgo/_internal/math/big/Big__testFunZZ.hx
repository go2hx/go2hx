package stdgo._internal.math.big;
function _testFunZZ(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _msg:stdgo.GoString, _f:stdgo._internal.math.big.Big_T_funZZ.T_funZZ, _a:stdgo._internal.math.big.Big_T_argZZ.T_argZZ):Void {
        var _z:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        var _z__pointer__ = (stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _z__pointer__ = (stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _z__pointer__ = (stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _z__pointer__ = (stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _f(_z__pointer__, _a._x, _a._y);
        if (!stdgo._internal.math.big.Big__isNormalized._isNormalized(_z__pointer__)) {
            _t.errorf(("%s%v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        if (_z__pointer__.cmp(_a._z) != ((0 : stdgo.GoInt))) {
            _t.errorf(("%v %s %v\n\tgot z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._x)), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._y)), stdgo.Go.toInterface(stdgo.Go.asInterface(_z__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
        };
    }
