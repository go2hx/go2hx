package stdgo._internal.slices;
function testIntSorts(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ints = stdgo._internal.slices.Slices__makerandomints._makeRandomInts((200 : stdgo.GoInt));
        var _ints2 = stdgo._internal.slices.Slices_clone.clone(_ints);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L114"
        stdgo._internal.sort.Sort_ints.ints(_ints);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L115"
        stdgo._internal.slices.Slices_sort.sort(_ints2);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L117"
        for (_i => _ in _ints) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L118"
            if (_ints[(_i : stdgo.GoInt)] != (_ints2[(_i : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/slices/sort_benchmark_test.go#L119"
                _t.fatalf(("ints2 mismatch at %d; %d != %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_ints[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_ints2[(_i : stdgo.GoInt)]));
            };
        };
    }
