package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testSearchEfficiency(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = (100 : stdgo.GoInt);
        var _step = (1 : stdgo.GoInt);
        {
            var _exp = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_exp < (10 : stdgo.GoInt) : Bool), _exp++, {
                var _max = (_internal.sort_test.Sort_test__log2._log2(_n) : stdgo.GoInt);
                {
                    var _x = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_x < _n : Bool), _x = (_x + (_step) : stdgo.GoInt), {
                        var _count = (0 : stdgo.GoInt);
                        var _i = (stdgo._internal.sort.Sort_search.search(_n, function(_i:stdgo.GoInt):Bool {
                            _count++;
                            return (_i >= _x : Bool);
                        }) : stdgo.GoInt);
                        if (_i != (_x)) {
                            _t.errorf(("n = %d: expected index %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_i));
                        };
                        if ((_count > _max : Bool)) {
                            _t.errorf(("n = %d, x = %d: expected <= %d calls; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_max), stdgo.Go.toInterface(_count));
                        };
                    });
                };
                _n = (_n * ((10 : stdgo.GoInt)) : stdgo.GoInt);
                _step = (_step * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            });
        };
    }
