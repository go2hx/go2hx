package stdgo._internal.slices;
function benchmarkSlicesSortInts_Reversed(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ints = stdgo._internal.slices.Slices__makeReversedInts._makeReversedInts((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo._internal.slices.Slices_sort.sort(_ints);
            });
        };
    }
