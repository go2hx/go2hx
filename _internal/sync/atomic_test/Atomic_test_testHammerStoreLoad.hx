package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testHammerStoreLoad(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tests = (new stdgo.Slice<(stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Void>(12, 12, ...[
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadInt32._hammerStoreLoadInt32,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadUint32._hammerStoreLoadUint32,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadUintptr._hammerStoreLoadUintptr,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadPointer._hammerStoreLoadPointer,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadInt32Method._hammerStoreLoadInt32Method,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadUint32Method._hammerStoreLoadUint32Method,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadUintptrMethod._hammerStoreLoadUintptrMethod,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadPointerMethod._hammerStoreLoadPointerMethod,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadInt64._hammerStoreLoadInt64,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadUint64._hammerStoreLoadUint64,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadInt64Method._hammerStoreLoadInt64Method,
_internal.sync.atomic_test.Atomic_test__hammerStoreLoadUint64Method._hammerStoreLoadUint64Method]) : stdgo.Slice<(stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, stdgo._internal.unsafe.Unsafe.UnsafePointer) -> Void>);
            var _n = ((1000000 : stdgo.GoInt) : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                _n = (10000 : stdgo.GoInt);
            };
            {};
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((8 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            {
                var _a0 = stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug_setGCPercent.setGCPercent(_a0));
            };
            stdgo._internal.runtime.Runtime_gc.gc();
            for (__34 => _tt in _tests) {
                var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                var _val:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                {
                    var _p = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_p < (8 : stdgo.GoInt) : Bool), _p++, {
                        stdgo.Go.routine(() -> {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    {
                                        var _i = (0 : stdgo.GoInt);
                                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                                            _tt(_t, (stdgo.Go.toInterface(stdgo.Go.pointer(_val)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
                                        });
                                    };
                                    _c.__send__((1 : stdgo.GoInt));
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
                            };
                            a();
                        });
                    });
                };
                {
                    var _p = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_p < (8 : stdgo.GoInt) : Bool), _p++, {
                        _c.__get__();
                    });
                };
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
