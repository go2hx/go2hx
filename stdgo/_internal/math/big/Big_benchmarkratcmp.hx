package stdgo._internal.math.big;
function benchmarkRatCmp(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var __0 = stdgo._internal.math.big.Big_newrat.newRat((4i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64)), __1 = stdgo._internal.math.big.Big_newrat.newRat((7i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64));
var _y = __1, _x = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2r _x.cmp(_y);
                _i++;
            };
        };
    }
