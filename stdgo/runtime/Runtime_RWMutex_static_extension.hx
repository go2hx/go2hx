package stdgo.runtime;
class RWMutex_static_extension {
    static public function unlock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>);
        stdgo._internal.runtime.Runtime_RWMutex_static_extension.RWMutex_static_extension.unlock(_rw);
    }
    static public function lock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>);
        stdgo._internal.runtime.Runtime_RWMutex_static_extension.RWMutex_static_extension.lock(_rw);
    }
    static public function rUnlock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>);
        stdgo._internal.runtime.Runtime_RWMutex_static_extension.RWMutex_static_extension.rUnlock(_rw);
    }
    static public function rLock(_rw:RWMutex):Void {
        final _rw = (_rw : stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>);
        stdgo._internal.runtime.Runtime_RWMutex_static_extension.RWMutex_static_extension.rLock(_rw);
    }
}
