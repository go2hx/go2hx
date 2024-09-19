package stdgo._internal.internal.poll;
@:structInit @:using(stdgo._internal.internal.poll.Poll_XFDMutex_static_extension.XFDMutex_static_extension) class XFDMutex {
    @:embedded
    public var _fdMutex : stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex = ({} : stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex);
    public function new(?_fdMutex:stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex) {
        if (_fdMutex != null) this._fdMutex = _fdMutex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _decref():Bool return this._fdMutex._decref();
    @:embedded
    public function _incref():Bool return this._fdMutex._incref();
    @:embedded
    public function _increfAndClose():Bool return this._fdMutex._increfAndClose();
    @:embedded
    public function _rwlock(__0:Bool):Bool return this._fdMutex._rwlock(__0);
    @:embedded
    public function _rwunlock(__0:Bool):Bool return this._fdMutex._rwunlock(__0);
    public function __copy__() {
        return new XFDMutex(_fdMutex);
    }
}
