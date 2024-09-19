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
function testSideEffectOrder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.runtime_test.Runtime_test__x._x = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _internal.runtime_test.Runtime_test__x._x = (_internal.runtime_test.Runtime_test__x._x.__append__((1 : stdgo.GoInt), _internal.runtime_test.Runtime_test__f._f()));
        if (((_internal.runtime_test.Runtime_test__x._x[(0 : stdgo.GoInt)] != (1 : stdgo.GoInt)) || (_internal.runtime_test.Runtime_test__x._x[(1 : stdgo.GoInt)] != (2 : stdgo.GoInt)) : Bool)) {
            _t.error(stdgo.Go.toInterface(("append failed: " : stdgo.GoString)), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__x._x[(0 : stdgo.GoInt)]), stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__x._x[(1 : stdgo.GoInt)]));
        };
    }
