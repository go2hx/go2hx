package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
function _newID():stdgo.GoUInt64 {
        return stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(stdgo.Go.pointer(_internal.runtime.trace_.Trace___lastTaskID._lastTaskID), (1i64 : stdgo.GoUInt64));
    }
