package stdgo._internal.math.big;
function _testModSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _elt:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _mod:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _sq:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, _sqrt:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>):Bool {
        var __0:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __1:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_), __2:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
var _sqrtsq = __2, _sqrtChk = __1, _sqChk = __0;
        var _sqrtsq__pointer__ = (stdgo.Go.setRef(_sqrtsq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrtChk__pointer__ = (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqChk__pointer__ = (stdgo.Go.setRef(_sqChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrtsq__pointer__ = (stdgo.Go.setRef(_sqrtsq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrtChk__pointer__ = (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqChk__pointer__ = (stdgo.Go.setRef(_sqChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrtsq__pointer__ = (stdgo.Go.setRef(_sqrtsq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrtChk__pointer__ = (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqChk__pointer__ = (stdgo.Go.setRef(_sqChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrtsq__pointer__ = (stdgo.Go.setRef(_sqrtsq) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqrtChk__pointer__ = (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        var _sqChk__pointer__ = (stdgo.Go.setRef(_sqChk) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        _sq.mul(_elt, _elt);
        _sq.mod(_sq, _mod);
        var _z = _sqrt.modSqrt(_sq, _mod);
        if (_z != (_sqrt)) {
            _t.errorf(("ModSqrt returned wrong value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        _sqChk.add(_sq, _mod);
        _z = _sqrtChk.modSqrt(_sqChk__pointer__, _mod);
        if (((_z != _sqrtChk__pointer__) || (_z.cmp(_sqrt) != (0 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("ModSqrt returned inconsistent value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        _sqChk.sub(_sq, _mod);
        _z = _sqrtChk.modSqrt(_sqChk__pointer__, _mod);
        if (((_z != _sqrtChk__pointer__) || (_z.cmp(_sqrt) != (0 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("ModSqrt returned inconsistent value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        _z = _sqrtChk.modSqrt(_sqrtChk.set(_sq), _mod);
        if (((_z != _sqrtChk__pointer__) || (_z.cmp(_sqrt) != (0 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("ModSqrt returned inconsistent value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        if (_sqrt.cmp(_elt) == ((0 : stdgo.GoInt))) {
            return true;
        };
        _sqrtsq.mul(_sqrt, _sqrt);
        _sqrtsq.mod(_sqrtsq__pointer__, _mod);
        return _sq.cmp(_sqrtsq__pointer__) == ((0 : stdgo.GoInt));
    }
