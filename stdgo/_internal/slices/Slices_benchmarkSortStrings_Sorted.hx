package stdgo._internal.slices;
function benchmarkSortStrings_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _ss = stdgo._internal.slices.Slices__makeSortedStrings._makeSortedStrings((100000 : stdgo.GoInt));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.sort.Sort_strings.strings(_ss);
            });
        };
    }
