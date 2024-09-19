package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testBreakPatterns(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _ in _data) {
            _data[(_i : stdgo.GoInt)] = (10 : stdgo.GoInt);
        };
        _data[((((_data.length) / (4 : stdgo.GoInt) : stdgo.GoInt)) * (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoInt);
        _data[((((_data.length) / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoInt);
        _data[((((_data.length) / (4 : stdgo.GoInt) : stdgo.GoInt)) * (3 : stdgo.GoInt) : stdgo.GoInt)] = (2 : stdgo.GoInt);
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface((_data : stdgo._internal.sort.Sort_IntSlice.IntSlice)));
    }
