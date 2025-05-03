package stdgo._internal.math.big;
function testSqr(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L719"
        for (__8 => _a in stdgo._internal.math.big.Big__prodnn._prodNN) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L720"
            if (_a._x != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L721"
                stdgo._internal.math.big.Big__testsqr._testSqr(_t, _a._x);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L723"
            if (_a._y != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L724"
                stdgo._internal.math.big.Big__testsqr._testSqr(_t, _a._y);
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L726"
            if (_a._z != null) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L727"
                stdgo._internal.math.big.Big__testsqr._testSqr(_t, _a._z);
            };
        };
    }
