package stdgo._internal.slices;
function testSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = stdgo._internal.slices.Slices_clone.clone((stdgo._internal.slices.Slices__ints._ints.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        stdgo._internal.slices.Slices_sort.sort(_data);
        if (!stdgo._internal.slices.Slices_isSorted.isSorted(_data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices__ints._ints));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }