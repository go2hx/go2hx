package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
function isEnabled():Bool {
        return _internal.runtime.trace_.Trace___tracing._tracing._enabled.load();
    }
