package stdgo._internal.internal.poll;
@:structInit @:using(stdgo._internal.internal.poll.Poll_t_fdmutex_static_extension.T_fdMutex_static_extension) class T_fdMutex {
    public var _state : stdgo.GoUInt64 = 0;
    public var _rsema : stdgo.GoUInt32 = 0;
    public var _wsema : stdgo.GoUInt32 = 0;
    public function new(?_state:stdgo.GoUInt64, ?_rsema:stdgo.GoUInt32, ?_wsema:stdgo.GoUInt32) {
        if (_state != null) this._state = _state;
        if (_rsema != null) this._rsema = _rsema;
        if (_wsema != null) this._wsema = _wsema;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fdMutex(_state, _rsema, _wsema);
    }
}
