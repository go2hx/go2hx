package stdgo.sync;
class Cond_static_extension {
    static public function broadcast(_c:Cond):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>);
        stdgo._internal.sync.Sync_Cond_static_extension.Cond_static_extension.broadcast(_c);
    }
    static public function signal(_c:Cond):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>);
        stdgo._internal.sync.Sync_Cond_static_extension.Cond_static_extension.signal(_c);
    }
    static public function wait_(_c:Cond):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>);
        stdgo._internal.sync.Sync_Cond_static_extension.Cond_static_extension.wait_(_c);
    }
}
