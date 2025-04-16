package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Cond_asInterface) class Cond_static_extension {
    @:keep
    @:tdfield
    static public function broadcast( _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> = _c;
        @:privateAccess #if target.threaded _c.cond.broadcast() #else null #end;
    }
    @:keep
    @:tdfield
    static public function signal( _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> = _c;
        @:privateAccess #if target.threaded _c.cond.signal() #else null #end;
    }
    @:keep
    @:tdfield
    static public function wait_( _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> = _c;
        _c.l.unlock();
        @:privateAccess #if target.threaded _c.cond.wait() #else null #end;
        _c.l.lock();
    }
}
