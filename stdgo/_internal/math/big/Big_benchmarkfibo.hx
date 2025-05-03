package stdgo._internal.math.big;
function benchmarkFibo(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L624"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L625"
                stdgo._internal.math.big.Big__fibo._fibo((1 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L626"
                stdgo._internal.math.big.Big__fibo._fibo((10 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L627"
                stdgo._internal.math.big.Big__fibo._fibo((100 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L628"
                stdgo._internal.math.big.Big__fibo._fibo((1000 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L629"
                stdgo._internal.math.big.Big__fibo._fibo((10000 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/math/big/nat_test.go#L630"
                stdgo._internal.math.big.Big__fibo._fibo((100000 : stdgo.GoInt));
                _i++;
            };
        };
    }
