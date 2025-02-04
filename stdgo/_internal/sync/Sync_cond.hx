package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_cond_static_extension.Cond_static_extension) class Cond {
    public var _noCopy : stdgo._internal.sync.Sync_t_nocopy.T_noCopy = ({} : stdgo._internal.sync.Sync_t_nocopy.T_noCopy);
    public var l : stdgo._internal.sync.Sync_locker.Locker = (null : stdgo._internal.sync.Sync_locker.Locker);
    public var _notify : stdgo._internal.sync.Sync_t_notifylist.T_notifyList = ({} : stdgo._internal.sync.Sync_t_notifylist.T_notifyList);
    public var _checker : stdgo._internal.sync.Sync_t_copychecker.T_copyChecker = (new stdgo.GoUIntptr(0) : stdgo._internal.sync.Sync_t_copychecker.T_copyChecker);
    public function new(?_noCopy:stdgo._internal.sync.Sync_t_nocopy.T_noCopy, ?l:stdgo._internal.sync.Sync_locker.Locker, ?_notify:stdgo._internal.sync.Sync_t_notifylist.T_notifyList, ?_checker:stdgo._internal.sync.Sync_t_copychecker.T_copyChecker) {
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
