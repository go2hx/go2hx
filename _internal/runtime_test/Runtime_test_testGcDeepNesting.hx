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
function testGcDeepNesting(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _a = (stdgo.Go.setRef(new _internal.runtime_test.Runtime_test_T_testGcDeepNesting___localname___T_687.T_testGcDeepNesting___localname___T_687(2, 2, ...[for (i in 0 ... 2) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>>>>>>>>>(2, 2, ...[for (i in 0 ... 2) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>>>>>>>>(2, 2, ...[for (i in 0 ... 2) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>>>>>>>(2, 2, ...[for (i in 0 ... 2) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>>>>>>(2, 2, ...[for (i in 0 ... 2) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>>>>>(2, 2, ...[for (i in 0 ... 2) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>>>>(2, 2, ...[for (i in 0 ... 2) new stdgo.GoArray<stdgo.GoArray<stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>>>(2, 2, ...[for (i in 0 ... 2) new stdgo.GoArray<stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>>(2, 2, ...[for (i in 0 ... 2) new stdgo.GoArray<stdgo.Pointer<stdgo.GoInt>>(2, 2, ...[for (i in 0 ... 2) (null : stdgo.Pointer<stdgo.GoInt>)])])])])])])])])])])) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_testGcDeepNesting___localname___T_687.T_testGcDeepNesting___localname___T_687>);
        _t.logf(("%p" : stdgo.GoString), stdgo.Go.toInterface(_a));
        _a[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] = stdgo.Go.pointer((0 : stdgo.GoInt));
        _a[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)].value = (13 : stdgo.GoInt);
        stdgo._internal.runtime.Runtime_gc.gc();
        if (_a[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)][(0 : stdgo.GoInt)].value != ((13 : stdgo.GoInt))) {
            _t.fail();
        };
    }
