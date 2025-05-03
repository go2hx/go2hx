package stdgo._internal.math.big;
function testShiftRight(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L293"
        for (_i => _test in stdgo._internal.math.big.Big__rightshifttests._rightShiftTests) {
            var _z:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
            _z = _z._shr(_test._in, _test._shift);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L296"
            for (_j => _d in _test._out) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L297"
                if (((_j >= (_z.length) : Bool) || (_z[(_j : stdgo.GoInt)] != _d) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L298"
                    _t.errorf(("#%d: got: %v want: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_z)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test._out)));
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L299"
                    break;
                };
            };
        };
    }
