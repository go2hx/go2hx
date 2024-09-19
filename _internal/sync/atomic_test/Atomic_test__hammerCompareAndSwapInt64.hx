package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerCompareAndSwapInt64(_uaddr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        var _addr = ((stdgo.Go.toInterface(_uaddr) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(int64_kind) })) : stdgo.Pointer<stdgo.GoInt64>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v = (stdgo._internal.sync.atomic_.Atomic__loadInt64.loadInt64(_addr) : stdgo.GoInt64);
                    if (stdgo._internal.sync.atomic_.Atomic__compareAndSwapInt64.compareAndSwapInt64(_addr, _v, (_v + (1i64 : stdgo.GoInt64) : stdgo.GoInt64))) {
                        break;
                    };
                };
            });
        };
    }
