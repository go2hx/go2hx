package stdgo._internal.math.big;
function testSqr(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__prodNN._prodNN) {
            if (_a._x != null) {
                stdgo._internal.math.big.Big__testSqr._testSqr(_t, _a._x);
            };
            if (_a._y != null) {
                stdgo._internal.math.big.Big__testSqr._testSqr(_t, _a._y);
            };
            if (_a._z != null) {
                stdgo._internal.math.big.Big__testSqr._testSqr(_t, _a._z);
            };
        };
    }
