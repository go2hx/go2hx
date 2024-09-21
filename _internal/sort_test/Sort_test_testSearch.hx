package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testSearch(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _e in _internal.sort_test.Sort_test__tests._tests) {
            var _i = (stdgo._internal.sort.Sort_search.search(_e._n, _e._f) : stdgo.GoInt);
            if (_i != (_e._i)) {
                _t.errorf(("%s: expected index %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_e._name), stdgo.Go.toInterface(_e._i), stdgo.Go.toInterface(_i));
            };
        };
    }
