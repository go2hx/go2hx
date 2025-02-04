package stdgo._internal.math.big;
function benchmarkFibo(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.math.big.Big__fibo._fibo((1 : stdgo.GoInt));
stdgo._internal.math.big.Big__fibo._fibo((10 : stdgo.GoInt));
stdgo._internal.math.big.Big__fibo._fibo((100 : stdgo.GoInt));
stdgo._internal.math.big.Big__fibo._fibo((1000 : stdgo.GoInt));
stdgo._internal.math.big.Big__fibo._fibo((10000 : stdgo.GoInt));
stdgo._internal.math.big.Big__fibo._fibo((100000 : stdgo.GoInt));
                _i++;
            };
        };
    }
