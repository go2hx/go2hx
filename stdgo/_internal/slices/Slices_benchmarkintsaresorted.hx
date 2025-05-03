package stdgo._internal.slices;
function benchmarkIntsAreSorted(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L91"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L92"
                _b.stopTimer();
var _ints = stdgo._internal.slices.Slices__makesortedints._makeSortedInts((100000 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L94"
                _b.startTimer();
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L95"
                stdgo._internal.sort.Sort_intsaresorted.intsAreSorted(_ints);
                _i++;
            };
        };
    }
