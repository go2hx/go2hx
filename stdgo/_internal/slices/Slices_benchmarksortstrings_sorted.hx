package stdgo._internal.slices;
function benchmarkSortStrings_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _ss = stdgo._internal.slices.Slices__makesortedstrings._makeSortedStrings((100000 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L168"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L170"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L171"
                stdgo._internal.sort.Sort_strings.strings(_ss);
                _i++;
            };
        };
    }
