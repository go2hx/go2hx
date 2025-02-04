package stdgo._internal.slices;
function testSortFloat64Slice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = stdgo._internal.slices.Slices_clone.clone((stdgo._internal.slices.Slices__float64s._float64s.__slice__(0) : stdgo.Slice<stdgo.GoFloat64>));
        stdgo._internal.slices.Slices_sort.sort(_data);
        if (!stdgo._internal.slices.Slices_issorted.isSorted(_data)) {
            @:check2r _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices__float64s._float64s));
            @:check2r _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
