package stdgo._internal.slices;
function benchmarkSortStructs(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L233"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L234"
                _b.stopTimer();
var _ss = (stdgo._internal.slices.Slices__makerandomstructs._makeRandomStructs((100000 : stdgo.GoInt)) : stdgo._internal.slices.Slices_t_mystructs.T_myStructs);
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L236"
                _b.startTimer();
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L237"
                stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_ss));
                _i++;
            };
        };
    }
