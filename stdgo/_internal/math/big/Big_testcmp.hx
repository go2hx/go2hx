package stdgo._internal.math.big;
function testCmp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L35"
        for (_i => _a in stdgo._internal.math.big.Big__cmptests._cmpTests) {
            var _r = (_a._x._cmp(_a._y) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L37"
            if (_r != (_a._r)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L38"
                _t.errorf(("#%d got r = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_a._r));
            };
        };
    }
