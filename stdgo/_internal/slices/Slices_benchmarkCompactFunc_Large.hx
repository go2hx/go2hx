package stdgo._internal.slices;
function benchmarkCompactFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _ss = (new stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var __blank__ = stdgo._internal.slices.Slices_compactFunc.compactFunc(_ss, function(_a:stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780, _b:stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780):Bool {
                    return stdgo.Go.toInterface(_a) == stdgo.Go.toInterface(_b);
                });
            });
        };
    }