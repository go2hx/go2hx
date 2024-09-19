package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testSortStringSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = _internal.sort_test.Sort_test__strings._strings?.__copy__();
        var _a = ((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) : stdgo._internal.sort.Sort_StringSlice.StringSlice);
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_a));
        if (!stdgo._internal.sort.Sort_isSorted.isSorted(stdgo.Go.asInterface(_a))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.sort_test.Sort_test__strings._strings));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
