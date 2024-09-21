package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testSortFloat64Slice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = _internal.sort_test.Sort_test__float64s._float64s?.__copy__();
        var _a = ((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat64>) : stdgo._internal.sort.Sort_Float64Slice.Float64Slice);
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_a));
        if (!stdgo._internal.sort.Sort_isSorted.isSorted(stdgo.Go.asInterface(_a))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.sort_test.Sort_test__float64s._float64s));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
