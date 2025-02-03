package stdgo.internal.poll;
@:structInit @:using(stdgo.internal.poll.Poll.XFDMutex_static_extension) abstract XFDMutex(stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex) from stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex to stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex {
    public var _fdMutex(get, set) : T_fdMutex;
    function get__fdMutex():T_fdMutex return this._fdMutex;
    function set__fdMutex(v:T_fdMutex):T_fdMutex {
        this._fdMutex = v;
        return v;
    }
    public function new(?_fdMutex:T_fdMutex) this = new stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex(_fdMutex);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
