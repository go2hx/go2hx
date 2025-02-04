package stdgo._internal.sync;
@:keep @:allow(stdgo._internal.sync.Sync.Cond_asInterface) class Cond_static_extension {
    @:keep
    @:tdfield
    static public function broadcast( _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> = _c;
        @:notptr (stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._checker) : stdgo._internal.sync.Sync_t_copycheckerpointer.T_copyCheckerPointer)._check();
        stdgo._internal.sync.Sync__runtime_notifylistnotifyall._runtime_notifyListNotifyAll((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._notify) : stdgo.Ref<stdgo._internal.sync.Sync_t_notifylist.T_notifyList>));
    }
    @:keep
    @:tdfield
    static public function signal( _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> = _c;
        @:notptr (stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._checker) : stdgo._internal.sync.Sync_t_copycheckerpointer.T_copyCheckerPointer)._check();
        stdgo._internal.sync.Sync__runtime_notifylistnotifyone._runtime_notifyListNotifyOne((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._notify) : stdgo.Ref<stdgo._internal.sync.Sync_t_notifylist.T_notifyList>));
    }
    @:keep
    @:tdfield
    static public function wait_( _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> = _c;
        @:notptr (stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._checker) : stdgo._internal.sync.Sync_t_copycheckerpointer.T_copyCheckerPointer)._check();
        var _t = (stdgo._internal.sync.Sync__runtime_notifylistadd._runtime_notifyListAdd((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._notify) : stdgo.Ref<stdgo._internal.sync.Sync_t_notifylist.T_notifyList>)) : stdgo.GoUInt32);
        (@:checkr _c ?? throw "null pointer dereference").l.unlock();
        stdgo._internal.sync.Sync__runtime_notifylistwait._runtime_notifyListWait((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._notify) : stdgo.Ref<stdgo._internal.sync.Sync_t_notifylist.T_notifyList>), _t);
        (@:checkr _c ?? throw "null pointer dereference").l.lock();
    }
}
