package stdgo._internal.slices;
function benchmarkIndexFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _ss = (new stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkIndexFunc_Large___localname___Large_8766.T_benchmarkIndexFunc_Large___localname___Large_8766>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices_T_benchmarkIndexFunc_Large___localname___Large_8766.T_benchmarkIndexFunc_Large___localname___Large_8766(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkIndexFunc_Large___localname___Large_8766.T_benchmarkIndexFunc_Large___localname___Large_8766>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                var __blank__ = stdgo._internal.slices.Slices_indexFunc.indexFunc(_ss, function(_e:stdgo._internal.slices.Slices_T_benchmarkIndexFunc_Large___localname___Large_8766.T_benchmarkIndexFunc_Large___localname___Large_8766):Bool {
                    return stdgo.Go.toInterface(_e) == stdgo.Go.toInterface((new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo._internal.slices.Slices_T_benchmarkIndexFunc_Large___localname___Large_8766.T_benchmarkIndexFunc_Large___localname___Large_8766));
                });
                _i++;
            };
        };
    }
