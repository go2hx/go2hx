package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testStrings(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = _internal.sort_test.Sort_test__strings._strings?.__copy__();
        stdgo._internal.sort.Sort_strings.strings((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>));
        if (!stdgo._internal.sort.Sort_stringsAreSorted.stringsAreSorted((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>))) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.sort_test.Sort_test__strings._strings));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
