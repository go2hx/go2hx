package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testReverseRange(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort_reverseRange.reverseRange(stdgo.Go.asInterface((_data : stdgo._internal.sort.Sort_IntSlice.IntSlice)), (0 : stdgo.GoInt), (_data.length));
        {
            var _i = ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                if ((_data[(_i : stdgo.GoInt)] > _data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool)) {
                    _t.fatalf(("reverseRange didn\'t work" : stdgo.GoString));
                };
            });
        };
        var _data1 = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt), (4 : stdgo.GoInt), (5 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _data2 = (new stdgo.Slice<stdgo.GoInt>(7, 7, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (5 : stdgo.GoInt), (4 : stdgo.GoInt), (3 : stdgo.GoInt), (6 : stdgo.GoInt), (7 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        stdgo._internal.sort.Sort_reverseRange.reverseRange(stdgo.Go.asInterface((_data1 : stdgo._internal.sort.Sort_IntSlice.IntSlice)), (2 : stdgo.GoInt), (5 : stdgo.GoInt));
        for (_i => _v in _data1) {
            if (_v != (_data2[(_i : stdgo.GoInt)])) {
                _t.fatalf(("reverseRange didn\'t work" : stdgo.GoString));
            };
        };
    }
