package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testNilDeref(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _funcs = (new stdgo.GoArray<() -> Void>(58, 58, ...[
function():Void {
                stdgo._internal.sync.atomic_.Atomic__compareAndSwapInt32.compareAndSwapInt32((null : stdgo.Pointer<stdgo.GoInt32>), (0 : stdgo.GoInt32), (0 : stdgo.GoInt32));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>).compareAndSwap((0 : stdgo.GoInt32), (0 : stdgo.GoInt32));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__compareAndSwapInt64.compareAndSwapInt64((null : stdgo.Pointer<stdgo.GoInt64>), (0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>).compareAndSwap((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint32.compareAndSwapUint32((null : stdgo.Pointer<stdgo.GoUInt32>), (0u32 : stdgo.GoUInt32), (0u32 : stdgo.GoUInt32));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>).compareAndSwap((0u32 : stdgo.GoUInt32), (0u32 : stdgo.GoUInt32));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint64.compareAndSwapUint64((null : stdgo.Pointer<stdgo.GoUInt64>), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>).compareAndSwap((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__compareAndSwapUintptr.compareAndSwapUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>), (0 : stdgo.GoUIntptr), (0 : stdgo.GoUIntptr));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>).compareAndSwap((0 : stdgo.GoUIntptr), (0 : stdgo.GoUIntptr));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__compareAndSwapPointer.compareAndSwapPointer((null : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), @:default_value null, @:default_value null);
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoUInt8>>).compareAndSwap((null : stdgo.Pointer<stdgo.GoUInt8>), (null : stdgo.Pointer<stdgo.GoUInt8>));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__swapInt32.swapInt32((null : stdgo.Pointer<stdgo.GoInt32>), (0 : stdgo.GoInt32));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>).swap((0 : stdgo.GoInt32));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__swapUint32.swapUint32((null : stdgo.Pointer<stdgo.GoUInt32>), (0u32 : stdgo.GoUInt32));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>).swap((0u32 : stdgo.GoUInt32));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__swapInt64.swapInt64((null : stdgo.Pointer<stdgo.GoInt64>), (0i64 : stdgo.GoInt64));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>).swap((0i64 : stdgo.GoInt64));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__swapUint64.swapUint64((null : stdgo.Pointer<stdgo.GoUInt64>), (0i64 : stdgo.GoUInt64));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>).swap((0i64 : stdgo.GoUInt64));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__swapUintptr.swapUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>), (0 : stdgo.GoUIntptr));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>).swap((0 : stdgo.GoUIntptr));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__swapPointer.swapPointer((null : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), @:default_value null);
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoUInt8>>).swap((null : stdgo.Pointer<stdgo.GoUInt8>));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32((null : stdgo.Pointer<stdgo.GoInt32>), (0 : stdgo.GoInt32));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>).add((0 : stdgo.GoInt32));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__addUint32.addUint32((null : stdgo.Pointer<stdgo.GoUInt32>), (0u32 : stdgo.GoUInt32));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>).add((0u32 : stdgo.GoUInt32));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__addInt64.addInt64((null : stdgo.Pointer<stdgo.GoInt64>), (0i64 : stdgo.GoInt64));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>).add((0i64 : stdgo.GoInt64));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64((null : stdgo.Pointer<stdgo.GoUInt64>), (0i64 : stdgo.GoUInt64));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>).add((0i64 : stdgo.GoUInt64));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__addUintptr.addUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>), (0 : stdgo.GoUIntptr));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>).add((0 : stdgo.GoUIntptr));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__loadInt32.loadInt32((null : stdgo.Pointer<stdgo.GoInt32>));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>).load();
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__loadInt64.loadInt64((null : stdgo.Pointer<stdgo.GoInt64>));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>).load();
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32((null : stdgo.Pointer<stdgo.GoUInt32>));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>).load();
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__loadUint64.loadUint64((null : stdgo.Pointer<stdgo.GoUInt64>));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>).load();
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__loadUintptr.loadUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>).load();
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__loadPointer.loadPointer((null : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoUInt8>>).load();
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__storeInt32.storeInt32((null : stdgo.Pointer<stdgo.GoInt32>), (0 : stdgo.GoInt32));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int32.Int32>).store((0 : stdgo.GoInt32));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__storeInt64.storeInt64((null : stdgo.Pointer<stdgo.GoInt64>), (0i64 : stdgo.GoInt64));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Int64_.Int64_>).store((0i64 : stdgo.GoInt64));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__storeUint32.storeUint32((null : stdgo.Pointer<stdgo.GoUInt32>), (0u32 : stdgo.GoUInt32));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint32.Uint32>).store((0u32 : stdgo.GoUInt32));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__storeUint64.storeUint64((null : stdgo.Pointer<stdgo.GoUInt64>), (0i64 : stdgo.GoUInt64));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64>).store((0i64 : stdgo.GoUInt64));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__storeUintptr.storeUintptr((null : stdgo.Pointer<stdgo.GoUIntptr>), (0 : stdgo.GoUIntptr));
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Uintptr.Uintptr>).store((0 : stdgo.GoUIntptr));
            },
function():Void {
                stdgo._internal.sync.atomic_.Atomic__storePointer.storePointer((null : stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>), @:default_value null);
            },
function():Void {
                (null : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Pointer_.Pointer_<stdgo.GoUInt8>>).store((null : stdgo.Pointer<stdgo.GoUInt8>));
            }]) : stdgo.GoArray<() -> Void>);
            for (__34 => _f in _funcs) {
                {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> {
                                var a = function():Void {
                                    var __deferstack__:Array<Void -> Void> = [];
                                    try {
                                        stdgo._internal.runtime.Runtime_gc.gc();
                                        ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        });
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
                            _f();
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
