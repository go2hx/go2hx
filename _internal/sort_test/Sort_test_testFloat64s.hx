package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testFloat64s(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = _internal.sort_test.Sort_test__float64s._float64s?.__copy__();
        stdgo._internal.sort.Sort_float64s.float64s((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat64>));
        if (!stdgo._internal.sort.Sort_float64sAreSorted.float64sAreSorted((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat64>))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.sort_test.Sort_test__float64s._float64s));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
