package stdgo._internal.slices;
function benchmarkEqualFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _xs = (new stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkEqualFunc_Large___localname___Large_2927.T_benchmarkEqualFunc_Large___localname___Large_2927>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices_T_benchmarkEqualFunc_Large___localname___Large_2927.T_benchmarkEqualFunc_Large___localname___Large_2927(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkEqualFunc_Large___localname___Large_2927.T_benchmarkEqualFunc_Large___localname___Large_2927>);
        var _ys = (new stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkEqualFunc_Large___localname___Large_2927.T_benchmarkEqualFunc_Large___localname___Large_2927>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices_T_benchmarkEqualFunc_Large___localname___Large_2927.T_benchmarkEqualFunc_Large___localname___Large_2927(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkEqualFunc_Large___localname___Large_2927.T_benchmarkEqualFunc_Large___localname___Large_2927>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = stdgo._internal.slices.Slices_equalFunc.equalFunc(_xs, _ys, function(_x:stdgo._internal.slices.Slices_T_benchmarkEqualFunc_Large___localname___Large_2927.T_benchmarkEqualFunc_Large___localname___Large_2927, _y:stdgo._internal.slices.Slices_T_benchmarkEqualFunc_Large___localname___Large_2927.T_benchmarkEqualFunc_Large___localname___Large_2927):Bool {
                    return stdgo.Go.toInterface(_x) == stdgo.Go.toInterface(_y);
                });
            });
        };
    }