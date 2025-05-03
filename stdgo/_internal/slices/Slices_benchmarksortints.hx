package stdgo._internal.slices;
function benchmarkSortInts(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L46"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L47"
                _b.stopTimer();
var _ints = stdgo._internal.slices.Slices__makerandomints._makeRandomInts((100000 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L49"
                _b.startTimer();
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L50"
                stdgo._internal.sort.Sort_ints.ints(_ints);
                _i++;
            };
        };
    }
