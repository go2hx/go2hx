package stdgo._internal.math.big;
function testSet(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__sumnn._sumNN) {
            var _z = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set(_a._z) : stdgo._internal.math.big.Big_t_nat.T_nat);
            if (_z._cmp(_a._z) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("got z = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_a._z)));
            };
        };
    }
