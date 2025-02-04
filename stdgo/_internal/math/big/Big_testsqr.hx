package stdgo._internal.math.big;
function testSqr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _a in stdgo._internal.math.big.Big__prodnn._prodNN) {
            if (_a._x != null) {
                stdgo._internal.math.big.Big__testsqr._testSqr(_t, _a._x);
            };
            if (_a._y != null) {
                stdgo._internal.math.big.Big__testsqr._testSqr(_t, _a._y);
            };
            if (_a._z != null) {
                stdgo._internal.math.big.Big__testsqr._testSqr(_t, _a._z);
            };
        };
    }
