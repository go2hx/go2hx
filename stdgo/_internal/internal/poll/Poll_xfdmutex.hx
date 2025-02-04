package stdgo._internal.internal.poll;
@:structInit @:using(stdgo._internal.internal.poll.Poll_xfdmutex_static_extension.XFDMutex_static_extension) class XFDMutex {
    @:embedded
    public var _fdMutex : stdgo._internal.internal.poll.Poll_t_fdmutex.T_fdMutex = ({} : stdgo._internal.internal.poll.Poll_t_fdmutex.T_fdMutex);
    public function new(?_fdMutex:stdgo._internal.internal.poll.Poll_t_fdmutex.T_fdMutex) {
        if (_fdMutex != null) this._fdMutex = _fdMutex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _decref(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__decref():() -> Bool return @:check32 this._fdMutex._decref;
    public var _incref(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__incref():() -> Bool return @:check32 this._fdMutex._incref;
    public var _increfAndClose(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__increfAndClose():() -> Bool return @:check32 this._fdMutex._increfAndClose;
    public var _rwlock(get, never) : Bool -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__rwlock():Bool -> Bool return @:check32 this._fdMutex._rwlock;
    public var _rwunlock(get, never) : Bool -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__rwunlock():Bool -> Bool return @:check32 this._fdMutex._rwunlock;
    public function __copy__() {
        return new XFDMutex(_fdMutex);
    }
}
