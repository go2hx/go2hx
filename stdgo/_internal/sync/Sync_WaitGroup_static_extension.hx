package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.sync.Sync.WaitGroup_asInterface) class WaitGroup_static_extension {
    @:keep
    @:tdfield
    static public function wait_( _wg:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>):Void @:privateAccess #if target.threaded _wg.lock.wait() #else null #end;
    @:keep
    @:tdfield
    static public function done( _wg:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>):Void {
        @:recv var _wg:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup> = _wg;
        @:privateAccess _wg.counter--;
        if (@:privateAccess _wg.counter <= 0) {
            @:privateAccess #if target.threaded _wg.lock.release() #else null #end;
        };
    }
    @:keep
    @:tdfield
    static public function add( _wg:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>, _delta:stdgo.GoInt):Void {
        @:recv var _wg:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup> = _wg;
        @:privateAccess _wg.counter += _delta;
        if (@:privateAccess _wg.counter < 0) throw "sync: negative WaitGroup counter";
    }
}
