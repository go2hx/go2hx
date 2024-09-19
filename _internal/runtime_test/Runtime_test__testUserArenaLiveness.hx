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
function _testUserArenaLiveness(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _useArenaFinalizer:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            stdgo._internal.runtime.Runtime_gc.gc();
            var _arena = stdgo._internal.runtime.Runtime_newUserArena.newUserArena();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (3 : stdgo.GoInt) : Bool), _i++, {
                    var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                    _x = stdgo.Go.toInterface((null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_mediumPointerOdd.T_mediumPointerOdd>));
                    _arena.new_((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>));
                });
            };
            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            _x = stdgo.Go.toInterface((null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointerMix.T_smallPointerMix>));
            _arena.new_((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>));
            var _v = (stdgo.Go.typeAssert((_x : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointerMix.T_smallPointerMix>)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointerMix.T_smallPointerMix>);
            var _safeToFinalize:_internal.runtime.internal.atomic_.Atomic__Bool_.Bool_ = ({} : _internal.runtime.internal.atomic_.Atomic__Bool_.Bool_);
            var _finalized:_internal.runtime.internal.atomic_.Atomic__Bool_.Bool_ = ({} : _internal.runtime.internal.atomic_.Atomic__Bool_.Bool_);
            _v.c = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>);
            stdgo._internal.runtime.Runtime_setFinalizer.setFinalizer(stdgo.Go.toInterface(_v.c), stdgo.Go.toInterface(function(__54:stdgo.Ref<_internal.runtime_test.Runtime_test_T_smallPointer.T_smallPointer>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (!_safeToFinalize.load()) {
                        _t.error(stdgo.Go.toInterface(("finalized arena-referenced object unexpectedly" : stdgo.GoString)));
                    };
                    _finalized.store(true);
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            }));
            stdgo._internal.runtime.Runtime_gc.gc();
            stdgo._internal.runtime.Runtime_gc.gc();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < ((1024 : stdgo.GoUIntptr) : stdgo.GoInt) : Bool), _i++, {
                    var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                    _x = stdgo.Go.toInterface((null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_mediumScalarEven.T_mediumScalarEven>));
                    _arena.new_((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>));
                });
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            stdgo._internal.runtime.Runtime_gc.gc();
            _v = null;
            _safeToFinalize.store(true);
            if (_useArenaFinalizer) {
                _arena = null;
                stdgo._internal.runtime.Runtime_gc.gc();
                stdgo._internal.runtime.Runtime_gc.gc();
                if (!stdgo._internal.runtime.Runtime_blockUntilEmptyFinalizerQueue.blockUntilEmptyFinalizerQueue(((2000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt64))) {
                    _t.fatal(stdgo.Go.toInterface(("finalizer queue was never emptied" : stdgo.GoString)));
                };
            } else {
                _arena.free();
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            stdgo._internal.runtime.Runtime_gc.gc();
            if (!stdgo._internal.runtime.Runtime_blockUntilEmptyFinalizerQueue.blockUntilEmptyFinalizerQueue(((2000000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo.GoInt64))) {
                _t.fatal(stdgo.Go.toInterface(("finalizer queue was never emptied" : stdgo.GoString)));
            };
            if (!_finalized.load()) {
                _t.error(stdgo.Go.toInterface(("expected arena-referenced object to be finalized" : stdgo.GoString)));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
