package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.WaitGroup_asInterface) class WaitGroup_static_extension {
    @:keep
    @:tdfield
    static public function wait_( _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>):Void @:privateAccess #if target.threaded _wg.lock.wait() #else null #end;
    @:keep
    @:tdfield
    static public function done( _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>):Void {
        @:recv var _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup> = _wg;
        @:privateAccess _wg.counter--;
        if (@:privateAccess _wg.counter <= 0) {
            @:privateAccess #if target.threaded _wg.lock.release() #else null #end;
        };
    }
    @:keep
    @:tdfield
    static public function add( _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>, _delta:stdgo.GoInt):Void {
        @:recv var _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup> = _wg;
        @:privateAccess _wg.counter += _delta;
        if (@:privateAccess _wg.counter < 0) throw "sync: negative WaitGroup counter";
    }
}
