package stdgo._internal.slices;
function testSortFloat64Slice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = stdgo._internal.slices.Slices_clone.clone((stdgo._internal.slices.Slices__float64s._float64s.__slice__(0) : stdgo.Slice<stdgo.GoFloat64>));
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L43"
        stdgo._internal.slices.Slices_sort.sort(_data);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L44"
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L45"
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices__float64s._float64s));
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L46"
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
