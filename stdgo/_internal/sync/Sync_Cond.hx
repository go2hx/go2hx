package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(stdgo._internal.sync.Sync_Cond_static_extension.Cond_static_extension) class Cond {
    public var _noCopy : stdgo._internal.sync.Sync_T_noCopy.T_noCopy = ({} : stdgo._internal.sync.Sync_T_noCopy.T_noCopy);
    public var l : stdgo._internal.sync.Sync_Locker.Locker = (null : stdgo._internal.sync.Sync_Locker.Locker);
    public var _notify : stdgo._internal.sync.Sync_T_notifyList.T_notifyList = ({} : stdgo._internal.sync.Sync_T_notifyList.T_notifyList);
    public var _checker : stdgo._internal.sync.Sync_T_copyChecker.T_copyChecker = ((0 : stdgo.GoUIntptr) : stdgo._internal.sync.Sync_T_copyChecker.T_copyChecker);
    public function new(?_noCopy:stdgo._internal.sync.Sync_T_noCopy.T_noCopy, ?l:stdgo._internal.sync.Sync_Locker.Locker, ?_notify:stdgo._internal.sync.Sync_T_notifyList.T_notifyList, ?_checker:stdgo._internal.sync.Sync_T_copyChecker.T_copyChecker) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (l != null) this.l = l;
        if (_notify != null) this._notify = _notify;
        if (_checker != null) this._checker = _checker;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Cond(_noCopy, l, _notify, _checker);
    }
}
