package stdgo._internal.math.big;
function testBit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__bitTests._bitTests) {
            var _x = (stdgo._internal.math.big.Big__natFromString._natFromString(_test._x?.__copy__()) : stdgo._internal.math.big.Big_T_nat.T_nat);
            {
                var _got = (_x._bit(_test._i) : stdgo.GoUInt);
                if (_got != (_test._want)) {
                    _t.errorf(("#%d: %s.bit(%d) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
                };
            };
        };
    }
