package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function _newID():stdgo.GoUInt64 {
        return stdgo._internal.sync.atomic_.Atomic__addUint64.addUint64(stdgo.Go.pointer(stdgo._internal.runtime.trace_.Trace___lastTaskID._lastTaskID), (1i64 : stdgo.GoUInt64));
    }
