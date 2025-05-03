package stdgo._internal.math.big;
function testBit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L660"
        for (_i => _test in stdgo._internal.math.big.Big__bittests._bitTests) {
            var _x = (stdgo._internal.math.big.Big__natfromstring._natFromString(_test._x?.__copy__()) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L662"
            {
                var _got = (_x._bit(_test._i) : stdgo.GoUInt);
                if (_got != (_test._want)) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L663"
                    _t.errorf(("#%d: %s.bit(%d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
