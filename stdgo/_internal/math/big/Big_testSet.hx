package stdgo._internal.math.big;
function testSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__sumNN._sumNN) {
            var _z = ((new stdgo._internal.math.big.Big_T_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_T_nat.T_nat)._set(_a._z) : stdgo._internal.math.big.Big_T_nat.T_nat);
            if (_z._cmp(_a._z) != ((0 : stdgo.GoInt))) {
                _t.errorf(("got z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
            };
        };
    }
