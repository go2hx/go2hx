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
function testEmptyString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = _internal.runtime_test.Runtime_test__adjStringChunk._adjStringChunk(), _x:stdgo.GoString = __tmp__._0, _y:stdgo.Ref<_internal.runtime_test.Runtime_test_T_objtype.T_objtype> = __tmp__._1;
        var _ss = ((_x.__slice__((320 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _fin = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_y), stdgo.Go.toInterface(function(_z:stdgo.Ref<_internal.runtime_test.Runtime_test_T_objtype.T_objtype>):Void {
            _fin.__send__(true);
        }));
        stdgo._internal.runtime.Runtime_gc.gc();
        _fin.__get__();
        _internal.runtime_test.Runtime_test__ssglobal._ssglobal = _ss?.__copy__();
    }