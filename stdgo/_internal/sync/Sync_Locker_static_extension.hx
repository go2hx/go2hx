package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:keep class Locker_static_extension {
    @:interfacetypeffun
    static public function unlock(t:stdgo._internal.sync.Sync_Locker.Locker):Void t.unlock();
    @:interfacetypeffun
    static public function lock(t:stdgo._internal.sync.Sync_Locker.Locker):Void t.lock();
}
