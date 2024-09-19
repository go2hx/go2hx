package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testStableInts(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = _internal.sort_test.Sort_test__ints._ints?.__copy__();
        stdgo._internal.sort.Sort_stable.stable(stdgo.Go.asInterface(((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) : stdgo._internal.sort.Sort_IntSlice.IntSlice)));
        if (!stdgo._internal.sort.Sort_intsAreSorted.intsAreSorted((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            _t.errorf(("nsorted %v\n   got %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.sort_test.Sort_test__ints._ints), stdgo.Go.toInterface(_data));
        };
    }
