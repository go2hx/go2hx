package stdgo._internal.slices;
function benchmarkSlicesSortStrings(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L176"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L177"
                _b.stopTimer();
var _ss = stdgo._internal.slices.Slices__makerandomstrings._makeRandomStrings((100000 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L179"
                _b.startTimer();
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L180"
                stdgo._internal.slices.Slices_sort.sort(_ss);
                _i++;
            };
        };
    }
