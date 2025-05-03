package stdgo._internal.slices;
function benchmarkSortStrings(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L158"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L159"
                _b.stopTimer();
var _ss = stdgo._internal.slices.Slices__makerandomstrings._makeRandomStrings((100000 : stdgo.GoInt));
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L161"
                _b.startTimer();
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L162"
                stdgo._internal.sort.Sort_strings.strings(_ss);
                _i++;
            };
        };
    }
