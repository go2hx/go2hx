package stdgo._internal.slices;
function benchmarkSlicesSortInts_Reversed(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L82"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L83"
                _b.stopTimer();
var _ints = stdgo._internal.slices.Slices__makereversedints._makeReversedInts((100000 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L85"
                _b.startTimer();
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L86"
                stdgo._internal.slices.Slices_sort.sort(_ints);
                _i++;
            };
        };
    }
