package stdgo._internal.slices;
function testSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = stdgo._internal.slices.Slices_clone.clone((stdgo._internal.slices.Slices__ints._ints.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L25"
        stdgo._internal.slices.Slices_sort.sort(_data);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L26"
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L27"
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices__ints._ints));
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L28"
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
