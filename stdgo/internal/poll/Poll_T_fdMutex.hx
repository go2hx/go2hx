package stdgo.internal.poll;
@:structInit @:using(stdgo.internal.poll.Poll.T_fdMutex_static_extension) abstract T_fdMutex(stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex) from stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex to stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex {
    public var _state(get, set) : haxe.UInt64;
    function get__state():haxe.UInt64 return this._state;
    function set__state(v:haxe.UInt64):haxe.UInt64 {
        this._state = (v : stdgo.GoUInt64);
        return v;
    }
    public var _rsema(get, set) : std.UInt;
    function get__rsema():std.UInt return this._rsema;
    function set__rsema(v:std.UInt):std.UInt {
        this._rsema = (v : stdgo.GoUInt32);
        return v;
    }
    public var _wsema(get, set) : std.UInt;
    function get__wsema():std.UInt return this._wsema;
    function set__wsema(v:std.UInt):std.UInt {
        this._wsema = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_state:haxe.UInt64, ?_rsema:std.UInt, ?_wsema:std.UInt) this = new stdgo._internal.internal.poll.Poll_T_fdMutex.T_fdMutex((_state : stdgo.GoUInt64), (_rsema : stdgo.GoUInt32), (_wsema : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
