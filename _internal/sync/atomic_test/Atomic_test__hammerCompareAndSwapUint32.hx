package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerCompareAndSwapUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _count:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                while (true) {
                    var _v = (stdgo._internal.sync.atomic_.Atomic__loadUint32.loadUint32(_addr) : stdgo.GoUInt32);
                    if (stdgo._internal.sync.atomic_.Atomic__compareAndSwapUint32.compareAndSwapUint32(_addr, _v, (_v + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32))) {
                        break;
                    };
                };
            });
        };
    }
