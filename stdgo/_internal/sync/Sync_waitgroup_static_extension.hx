package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.WaitGroup_asInterface) class WaitGroup_static_extension {
    @:keep
    @:tdfield
    static public function wait_( _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>):Void {
        @:recv var _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup> = _wg;
        #if target.threaded {
            while (true) {
                if (@:privateAccess !_wg.mutex.tryAcquire()) {
                    stdgo._internal.internal.Async.tick();
                    std.Sys.sleep(0.001);
                    continue;
                };
                if (@:privateAccess _wg.counter <= 0) {
                    @:privateAccess _wg.mutex.release();
                    break;
                };
                @:privateAccess _wg.mutex.release();
                stdgo._internal.internal.Async.tick();
                std.Sys.sleep(0.001);
            };
        } #else null #end;
    }
    @:keep
    @:tdfield
    static public function done( _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>):Void {
        @:recv var _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup> = _wg;
        #if target.threaded {
            @:privateAccess _wg.mutex.acquire();
            @:privateAccess _wg.counter--;
            if (@:privateAccess _wg.counter < 0) {
                @:privateAccess _wg.mutex.release();
                throw "sync: negative WaitGroup counter";
            };
            @:privateAccess _wg.mutex.release();
        } #else null #end;
    }
    @:keep
    @:tdfield
    static public function add( _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup>, _delta:stdgo.GoInt):Void {
        @:recv var _wg:stdgo.Ref<stdgo._internal.sync.Sync_waitgroup.WaitGroup> = _wg;
        #if target.threaded {
            @:privateAccess _wg.mutex.acquire();
            @:privateAccess _wg.counter += _delta;
            @:privateAccess _wg.mutex.release();
        } #else null #end;
    }
}
