package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testCallReturnsEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.runtime.Runtime_gc.gc();
        var _finalized:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _f = (function():{ var _0 : _internal.reflect_test.Reflect_test_T_emptyStruct.T_emptyStruct; var _1 : stdgo.Ref<stdgo.GoArray<stdgo.GoInt64>>; } {
            var _i = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt64>(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoInt64)])) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt64>>);
            stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(function(_0:stdgo.Ref<stdgo.GoArray<stdgo.GoInt64>>):Void {
                stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32(stdgo.Go.pointer(_finalized), (1u32 : stdgo.GoUInt32));
            }));
            return { _0 : (new _internal.reflect_test.Reflect_test_T_emptyStruct.T_emptyStruct() : _internal.reflect_test.Reflect_test_T_emptyStruct.T_emptyStruct), _1 : _i };
        } : () -> { var _0 : _internal.reflect_test.Reflect_test_T_emptyStruct.T_emptyStruct; var _1 : stdgo.Ref<stdgo.GoArray<stdgo.GoInt64>>; });
        var _v = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_f)).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_Value.Value>))[(0 : stdgo.GoInt)] : stdgo._internal.reflect.Reflect_Value.Value);
        var _timeout = stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_Duration.Duration));
        while (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(stdgo.Go.pointer(_finalized)) == ((0u32 : stdgo.GoUInt32))) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_timeout != null && _timeout.__isGet__()) {
                        __select__ = false;
                        {
                            _timeout.__get__();
                            {
                                _t.fatal(stdgo.Go.toInterface(("finalizer did not run" : stdgo.GoString)));
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            stdgo._internal.runtime.Runtime_gosched.gosched();
            stdgo._internal.runtime.Runtime_gc.gc();
        };
        stdgo._internal.runtime.Runtime_keepAlive.keepAlive(stdgo.Go.toInterface(stdgo.Go.asInterface(_v)));
    }
