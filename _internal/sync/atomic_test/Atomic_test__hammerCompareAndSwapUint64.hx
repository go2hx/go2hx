package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerCompareAndSwapUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v = (stdgo._internal.sync.atomic_.Atomic__loadUint64.loadUint64(_addr) : stdgo.GoUInt64);
                    if (stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint64.compareAndSwapUint64(_addr, _v, (_v + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64))) {
                        break;
                    };
                };
            });
        };
    }
