package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function _parseTraceback1(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _tb:stdgo.GoString):stdgo.Ref<_internal.runtime_test.Runtime_test_T_traceback.T_traceback> {
        var _tbs = _internal.runtime_test.Runtime_test__parseTraceback._parseTraceback(_t, _tb?.__copy__());
        if ((_tbs.length) != ((1 : stdgo.GoInt))) {
            _t.fatalf(("want 1 goroutine, got %d:\n%s" : stdgo.GoString), stdgo.Go.toInterface((_tbs.length)), stdgo.Go.toInterface(_tb));
        };
        return _tbs[(0 : stdgo.GoInt)];
    }
