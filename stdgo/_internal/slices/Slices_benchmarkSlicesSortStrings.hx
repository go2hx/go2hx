package stdgo._internal.slices;
function benchmarkSlicesSortStrings(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _b.stopTimer();
                var _ss = stdgo._internal.slices.Slices__makeRandomStrings._makeRandomStrings((100000 : stdgo.GoInt));
                _b.startTimer();
                stdgo._internal.slices.Slices_sort.sort(_ss);
            });
        };
    }
