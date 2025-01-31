package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.sync.Sync.Cond_asInterface) class Cond_static_extension {
    @:keep
    @:tdfield
    static public function broadcast( _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> = _c;
        @:notptr (stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._checker) : stdgo._internal.sync.Sync_T_copyCheckerPointer.T_copyCheckerPointer)._check();
        stdgo._internal.sync.Sync__runtime_notifyListNotifyAll._runtime_notifyListNotifyAll((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._notify) : stdgo.Ref<stdgo._internal.sync.Sync_T_notifyList.T_notifyList>));
    }
    @:keep
    @:tdfield
    static public function signal( _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> = _c;
        @:notptr (stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._checker) : stdgo._internal.sync.Sync_T_copyCheckerPointer.T_copyCheckerPointer)._check();
        stdgo._internal.sync.Sync__runtime_notifyListNotifyOne._runtime_notifyListNotifyOne((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._notify) : stdgo.Ref<stdgo._internal.sync.Sync_T_notifyList.T_notifyList>));
    }
    @:keep
    @:tdfield
    static public function wait_( _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> = _c;
        @:notptr (stdgo.Go.pointer((@:checkr _c ?? throw "null pointer dereference")._checker) : stdgo._internal.sync.Sync_T_copyCheckerPointer.T_copyCheckerPointer)._check();
        var _t = (stdgo._internal.sync.Sync__runtime_notifyListAdd._runtime_notifyListAdd((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._notify) : stdgo.Ref<stdgo._internal.sync.Sync_T_notifyList.T_notifyList>)) : stdgo.GoUInt32);
        (@:checkr _c ?? throw "null pointer dereference").l.unlock();
        stdgo._internal.sync.Sync__runtime_notifyListWait._runtime_notifyListWait((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._notify) : stdgo.Ref<stdgo._internal.sync.Sync_T_notifyList.T_notifyList>), _t);
        (@:checkr _c ?? throw "null pointer dereference").l.lock();
    }
}
