package stdgo._internal.math.big;
function testFibo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L614"
        for (_i => _want in stdgo._internal.math.big.Big__fibonums._fiboNums) {
            var _n = (_i * (10 : stdgo.GoInt) : stdgo.GoInt);
            var _got = ((stdgo._internal.math.big.Big__fibo._fibo(_n)._utoa((10 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L617"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L618"
                _t.errorf(("fibo(%d) failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
