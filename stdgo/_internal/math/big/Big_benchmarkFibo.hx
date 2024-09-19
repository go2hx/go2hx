package stdgo._internal.math.big;
function benchmarkFibo(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.math.big.Big__fibo._fibo((1 : stdgo.GoInt));
                stdgo._internal.math.big.Big__fibo._fibo((10 : stdgo.GoInt));
                stdgo._internal.math.big.Big__fibo._fibo((100 : stdgo.GoInt));
                stdgo._internal.math.big.Big__fibo._fibo((1000 : stdgo.GoInt));
                stdgo._internal.math.big.Big__fibo._fibo((10000 : stdgo.GoInt));
                stdgo._internal.math.big.Big__fibo._fibo((100000 : stdgo.GoInt));
            });
        };
    }
