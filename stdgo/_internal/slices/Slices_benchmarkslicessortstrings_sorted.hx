package stdgo._internal.slices;
function benchmarkSlicesSortStrings_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _ss = stdgo._internal.slices.Slices__makesortedstrings._makeSortedStrings((100000 : stdgo.GoInt));
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.slices.Slices_sort.sort(_ss);
                _i++;
            };
        };
    }
