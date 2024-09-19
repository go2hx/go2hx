package stdgo._internal.math.big;
function testShiftLeft(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__leftShiftTests._leftShiftTests) {
            var _z:stdgo._internal.math.big.Big_T_nat.T_nat = new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0);
            _z = _z._shl(_test._in, _test._shift);
            for (_j => _d in _test._out) {
                if (((_j >= (_z.length) : Bool) || (_z[(_j : stdgo.GoInt)] != _d) : Bool)) {
                    _t.errorf(("#%d: got: %v want: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._out)));
                    break;
                };
            };
        };
    }