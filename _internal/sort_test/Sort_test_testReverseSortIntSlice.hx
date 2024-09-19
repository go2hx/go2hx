package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testReverseSortIntSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = _internal.sort_test.Sort_test__ints._ints?.__copy__();
        var _data1 = _internal.sort_test.Sort_test__ints._ints?.__copy__();
        var _a = ((_data.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) : stdgo._internal.sort.Sort_IntSlice.IntSlice);
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_a));
        var _r = ((_data1.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>) : stdgo._internal.sort.Sort_IntSlice.IntSlice);
        stdgo._internal.sort.Sort_sort.sort(stdgo._internal.sort.Sort_reverse.reverse(stdgo.Go.asInterface(_r)));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                if (_a[(_i : stdgo.GoInt)] != (_r[(((12 : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoInt)])) {
                    _t.errorf(("reverse sort didn\'t sort" : stdgo.GoString));
                };
                if ((_i > (6 : stdgo.GoInt) : Bool)) {
                    break;
                };
            });
        };
    }
