package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testSearchWrappers(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _e in _internal.sort_test.Sort_test__wrappertests._wrappertests) {
            if (_e._result != (_e._i)) {
                _t.errorf(("%s: expected index %d; got %d" : stdgo.GoString), stdgo.Go.toInterface(_e._name), stdgo.Go.toInterface(_e._i), stdgo.Go.toInterface(_e._result));
            };
        };
    }
