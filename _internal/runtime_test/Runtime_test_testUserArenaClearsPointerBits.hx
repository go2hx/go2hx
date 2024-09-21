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
function testUserArenaClearsPointerBits(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoUInt8>(8388608, 8388608, ...[for (i in 0 ... 8388608) (0 : stdgo.GoUInt8)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        var _xp = ((stdgo.Go.toInterface(stdgo.Go.pointer(_x[(124 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
        var _finalized:_internal.runtime.internal.atomic_.Atomic__Bool_.Bool_ = ({} : _internal.runtime.internal.atomic_.Atomic__Bool_.Bool_);
        stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_x), stdgo.Go.toInterface(function(__6:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>):Void {
            _finalized.store(true);
        }));
        var _a = stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((6291456 : stdgo.GoUIntptr) : stdgo.GoInt) : Bool), _i++, {
                var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                _x = stdgo.Go.toInterface((null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>));
                _a.new_((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>));
            });
        };
        _a.free();
        stdgo._internal.runtime.Runtime_gc.gc();
        stdgo._internal.runtime.Runtime_gc.gc();
        _a = stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((4194304 : stdgo.GoUIntptr) : stdgo.GoInt) : Bool), _i++, {
                var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                _x = stdgo.Go.toInterface((null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>));
                _a.new_((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>));
                var _v = (stdgo.Go.typeAssert((_x : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar>);
                {
                    var __tmp__ = (new _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar(_xp) : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar);
                    (_v : _internal.runtime_test.Runtime_test_T_smallScalar.T_smallScalar).x = __tmp__.x;
                };
            });
        };
        stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(_x));
        _x = (null : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>);
        stdgo._internal.runtime.Runtime_gc.gc();
        stdgo._internal.runtime.Runtime_gc.gc();
        if (!stdgo._internal.runtime.Runtime_blockUntilEmptyFinalizerQueue.blockUntilEmptyFinalizerQueue(((2000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt64))) {
            _t.fatal(stdgo.Go.toInterface(("finalizer queue was never emptied" : stdgo.GoString)));
        };
        if (!_finalized.load()) {
            _t.fatal(stdgo.Go.toInterface(("heap allocation kept alive through non-pointer reference" : stdgo.GoString)));
        };
        _a.free();
        stdgo._internal.runtime.Runtime_gc.gc();
        stdgo._internal.runtime.Runtime_gc.gc();
    }
