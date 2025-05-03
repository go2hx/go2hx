package stdgo._internal.slices;
function benchmarkIsSorted(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L100"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L101"
                _b.stopTimer();
var _ints = stdgo._internal.slices.Slices__makesortedints._makeSortedInts((100000 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L103"
                _b.startTimer();
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L104"
                stdgo._internal.slices.Slices_issorted.isSorted(_ints);
                _i++;
            };
        };
    }
