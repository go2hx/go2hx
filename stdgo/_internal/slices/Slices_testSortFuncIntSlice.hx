package stdgo._internal.slices;
function testSortFuncIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = stdgo._internal.slices.Slices_clone.clone((stdgo._internal.slices.Slices__ints._ints.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        stdgo._internal.slices.Slices_sortFunc.sortFunc(_data, function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return (_a - _b : stdgo.GoInt);
        });
        if (!stdgo._internal.slices.Slices_isSorted.isSorted(_data)) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices__ints._ints));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
