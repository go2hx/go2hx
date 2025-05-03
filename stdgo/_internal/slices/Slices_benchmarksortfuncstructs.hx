package stdgo._internal.slices;
function benchmarkSortFuncStructs(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _cmpFunc = function(_a:stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>, _b:stdgo.Ref<stdgo._internal.slices.Slices_t_mystruct.T_myStruct>):stdgo.GoInt {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L242"
            return ((@:checkr _a ?? throw "null pointer dereference")._n - (@:checkr _b ?? throw "null pointer dereference")._n : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L243"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L244"
                _b.stopTimer();
var _ss = (stdgo._internal.slices.Slices__makerandomstructs._makeRandomStructs((100000 : stdgo.GoInt)) : stdgo._internal.slices.Slices_t_mystructs.T_myStructs);
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L246"
                _b.startTimer();
//"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L247"
                stdgo._internal.slices.Slices_sortfunc.sortFunc(_ss, _cmpFunc);
                _i++;
            };
        };
    }
