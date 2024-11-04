package stdgo._internal.slices;
function benchmarkSortStrings_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _ss = stdgo._internal.slices.Slices__makeSortedStrings._makeSortedStrings((100000 : stdgo.GoInt));
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                stdgo._internal.sort.Sort_strings.strings(_ss);
                _i++;
            };
        };
    }
