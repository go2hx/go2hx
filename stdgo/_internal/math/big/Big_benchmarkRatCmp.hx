package stdgo._internal.math.big;
function benchmarkRatCmp(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var __0 = stdgo._internal.math.big.Big_newRat.newRat((4i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64)), __1 = stdgo._internal.math.big.Big_newRat.newRat((7i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
var _y = __1, _x = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _x.cmp(_y);
            });
        };
    }
