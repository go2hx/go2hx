package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testSearchExhaustive(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _size = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_size <= (100 : stdgo.GoInt) : Bool), _size++, {
                {
                    var _targ = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_targ <= _size : Bool), _targ++, {
                        var _i = (stdgo._internal.sort.Sort_search.search(_size, function(_i:stdgo.GoInt):Bool {
                            return (_i >= _targ : Bool);
                        }) : stdgo.GoInt);
                        if (_i != (_targ)) {
                            _t.errorf(("Search(%d, %d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_targ), stdgo.Go.toInterface(_i));
                        };
                    });
                };
            });
        };
    }
