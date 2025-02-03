package stdgo.sync;
class WaitGroup_static_extension {
    static public function wait_(_wg:WaitGroup):Void {
        final _wg = (_wg : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>);
        stdgo._internal.sync.Sync_WaitGroup_static_extension.WaitGroup_static_extension.wait_(_wg);
    }
    static public function done(_wg:WaitGroup):Void {
        final _wg = (_wg : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>);
        stdgo._internal.sync.Sync_WaitGroup_static_extension.WaitGroup_static_extension.done(_wg);
    }
    static public function add(_wg:WaitGroup, _delta:StdTypes.Int):Void {
        final _wg = (_wg : stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>);
        final _delta = (_delta : stdgo.GoInt);
        stdgo._internal.sync.Sync_WaitGroup_static_extension.WaitGroup_static_extension.add(_wg, _delta);
    }
}
