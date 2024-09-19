package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function _hammerAddUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _count:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _count : Bool), _i++, {
                stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(_addr, (1i64 : stdgo.GoUInt64));
            });
        };
    }
