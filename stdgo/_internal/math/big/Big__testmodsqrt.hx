package stdgo._internal.math.big;
function _testModSqrt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _elt:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _mod:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _sq:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _sqrt:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        var _sqChk:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _sqrtChk:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _sqrtsq:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1620"
        _sq.mul(_elt, _elt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1621"
        _sq.mod(_sq, _mod);
        var _z = _sqrt.modSqrt(_sq, _mod);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1623"
        if (_z != (_sqrt)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1624"
            _t.errorf(("ModSqrt returned wrong value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1628"
        _sqChk.add(_sq, _mod);
        _z = _sqrtChk.modSqrt((stdgo.Go.setRef(_sqChk) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _mod);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1630"
        if (((_z != (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) || (_z.cmp(_sqrt) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1631"
            _t.errorf(("ModSqrt returned inconsistent value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1633"
        _sqChk.sub(_sq, _mod);
        _z = _sqrtChk.modSqrt((stdgo.Go.setRef(_sqChk) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _mod);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1635"
        if (((_z != (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) || (_z.cmp(_sqrt) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1636"
            _t.errorf(("ModSqrt returned inconsistent value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        _z = _sqrtChk.modSqrt(_sqrtChk.set(_sq), _mod);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1641"
        if (((_z != (stdgo.Go.setRef(_sqrtChk) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) || (_z.cmp(_sqrt) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1642"
            _t.errorf(("ModSqrt returned inconsistent value %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1646"
        if (_sqrt.cmp(_elt) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1647"
            return true;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1649"
        _sqrtsq.mul(_sqrt, _sqrt);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1650"
        _sqrtsq.mod((stdgo.Go.setRef(_sqrtsq) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _mod);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1651"
        return _sq.cmp((stdgo.Go.setRef(_sqrtsq) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) == ((0 : stdgo.GoInt));
    }
