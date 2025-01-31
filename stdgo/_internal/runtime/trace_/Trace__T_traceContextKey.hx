package stdgo._internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.runtime.trace_.Trace__T_traceContextKey_static_extension.T_traceContextKey_static_extension) class T_traceContextKey {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_traceContextKey();
    }
}
