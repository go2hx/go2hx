package _internal.runtime.trace_;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_traceContextKey {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_traceContextKey();
    }
}
