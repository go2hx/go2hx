package stdgo.sync;
@:structInit @:using(stdgo.sync.Sync.Cond_static_extension) abstract Cond(stdgo._internal.sync.Sync_Cond.Cond) from stdgo._internal.sync.Sync_Cond.Cond to stdgo._internal.sync.Sync_Cond.Cond {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var l(get, set) : Locker;
    function get_l():Locker return this.l;
    function set_l(v:Locker):Locker {
        this.l = v;
        return v;
    }
    public var _notify(get, set) : T_notifyList;
    function get__notify():T_notifyList return this._notify;
    function set__notify(v:T_notifyList):T_notifyList {
        this._notify = v;
        return v;
    }
    public var _checker(get, set) : T_copyChecker;
    function get__checker():T_copyChecker return this._checker;
    function set__checker(v:T_copyChecker):T_copyChecker {
        this._checker = v;
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?l:Locker, ?_notify:T_notifyList, ?_checker:T_copyChecker) this = new stdgo._internal.sync.Sync_Cond.Cond(_noCopy, l, _notify, _checker);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
