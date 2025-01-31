package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function isEnabled():Bool {
        return @:check2 stdgo._internal.runtime.trace_.Trace___tracing._tracing._enabled.load();
    }
