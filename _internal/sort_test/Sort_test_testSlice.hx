package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = _internal.sort_test.Sort_test__strings._strings?.__copy__();
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface((_data.__slice__(0) : stdgo.Slice<stdgo.GoString>)), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_data[(_i : stdgo.GoInt)] < _data[(_j : stdgo.GoInt)] : Bool);
        });
        if (!stdgo._internal.sort.Sort_sliceIsSorted.sliceIsSorted(stdgo.Go.toInterface((_data.__slice__(0) : stdgo.Slice<stdgo.GoString>)), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return (_data[(_i : stdgo.GoInt)] < _data[(_j : stdgo.GoInt)] : Bool);
        })) {
            _t.errorf(("sorted %v" : stdgo.GoString), stdgo.Go.toInterface(_internal.sort_test.Sort_test__strings._strings));
            _t.errorf(("   got %v" : stdgo.GoString), stdgo.Go.toInterface(_data));
        };
    }
