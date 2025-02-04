package stdgo._internal.slices;
function testSortFuncIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = stdgo._internal.slices.Slices_clone.clone((stdgo._internal.slices.Slices__ints._ints.__slice__(0) : stdgo.Slice<stdgo.GoInt>));
        stdgo._internal.slices.Slices_sortfunc.sortFunc(_data, function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return (_a - _b : stdgo.GoInt);
        });
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            @:check2r _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices__ints._ints));
            @:check2r _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
