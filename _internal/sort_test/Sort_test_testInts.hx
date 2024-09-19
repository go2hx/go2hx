package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testInts(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = _internal.sort_test.Sort_test__ints._ints?.__copy__();
        stdgo._internal.sort.Sort_ints.ints((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
        if (!stdgo._internal.sort.Sort_intsAreSorted.intsAreSorted((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.sort_test.Sort_test__ints._ints));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
