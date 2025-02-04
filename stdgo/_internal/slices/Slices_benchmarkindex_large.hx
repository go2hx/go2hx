package stdgo._internal.slices;
function benchmarkIndex_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        var _ss = (new stdgo.Slice<stdgo._internal.slices.Slices_t_benchmarkindex_large___localname___large_7963.T_benchmarkIndex_Large___localname___Large_7963>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices_t_benchmarkindex_large___localname___large_7963.T_benchmarkIndex_Large___localname___Large_7963(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices_t_benchmarkindex_large___localname___large_7963.T_benchmarkIndex_Large___localname___Large_7963>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var __blank__ = stdgo._internal.slices.Slices_index.index(_ss, (new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo._internal.slices.Slices_t_benchmarkindex_large___localname___large_7963.T_benchmarkIndex_Large___localname___Large_7963).__copy__());
                _i++;
            };
        };
    }
