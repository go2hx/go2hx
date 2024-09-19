package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Cond_asInterface) class Cond_static_extension {
    @:keep
    static public function broadcast( _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> = _c;
        _c._checker._check(stdgo.Go.pointer(_c._checker));
        stdgo._internal.sync.Sync__runtime_notifyListNotifyAll._runtime_notifyListNotifyAll((stdgo.Go.setRef(_c._notify) : stdgo.Ref<stdgo._internal.sync.Sync_T_notifyList.T_notifyList>));
    }
    @:keep
    static public function signal( _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> = _c;
        _c._checker._check(stdgo.Go.pointer(_c._checker));
        stdgo._internal.sync.Sync__runtime_notifyListNotifyOne._runtime_notifyListNotifyOne((stdgo.Go.setRef(_c._notify) : stdgo.Ref<stdgo._internal.sync.Sync_T_notifyList.T_notifyList>));
    }
    @:keep
    static public function wait_( _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> = _c;
        _c._checker._check(stdgo.Go.pointer(_c._checker));
        var _t = (stdgo._internal.sync.Sync__runtime_notifyListAdd._runtime_notifyListAdd((stdgo.Go.setRef(_c._notify) : stdgo.Ref<stdgo._internal.sync.Sync_T_notifyList.T_notifyList>)) : stdgo.GoUInt32);
        _c.l.unlock();
        stdgo._internal.sync.Sync__runtime_notifyListWait._runtime_notifyListWait((stdgo.Go.setRef(_c._notify) : stdgo.Ref<stdgo._internal.sync.Sync_T_notifyList.T_notifyList>), _t);
        _c.l.lock();
    }
}
