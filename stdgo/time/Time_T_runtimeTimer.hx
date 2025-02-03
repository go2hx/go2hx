package stdgo.time;
@:structInit @:using(stdgo.time.Time.T_runtimeTimer_static_extension) abstract T_runtimeTimer(stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer) from stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer to stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer {
    public var _pp(get, set) : stdgo.GoUIntptr;
    function get__pp():stdgo.GoUIntptr return this._pp;
    function set__pp(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._pp = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _when(get, set) : haxe.Int64;
    function get__when():haxe.Int64 return this._when;
    function set__when(v:haxe.Int64):haxe.Int64 {
        this._when = (v : stdgo.GoInt64);
        return v;
    }
    public var _period(get, set) : haxe.Int64;
    function get__period():haxe.Int64 return this._period;
    function set__period(v:haxe.Int64):haxe.Int64 {
        this._period = (v : stdgo.GoInt64);
        return v;
    }
    public var _f(get, set) : (stdgo.AnyInterface, stdgo.GoUIntptr) -> Void;
    function get__f():(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void return (_0, _1) -> this._f(_0, _1);
    function set__f(v:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void):(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void {
        this._f = v;
        return v;
    }
    public var _arg(get, set) : stdgo.AnyInterface;
    function get__arg():stdgo.AnyInterface return this._arg;
    function set__arg(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this._arg = (v : stdgo.AnyInterface);
        return v;
    }
    public var _seq(get, set) : stdgo.GoUIntptr;
    function get__seq():stdgo.GoUIntptr return this._seq;
    function set__seq(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        this._seq = (v : stdgo.GoUIntptr);
        return v;
    }
    public var _nextwhen(get, set) : haxe.Int64;
    function get__nextwhen():haxe.Int64 return this._nextwhen;
    function set__nextwhen(v:haxe.Int64):haxe.Int64 {
        this._nextwhen = (v : stdgo.GoInt64);
        return v;
    }
    public var _status(get, set) : std.UInt;
    function get__status():std.UInt return this._status;
    function set__status(v:std.UInt):std.UInt {
        this._status = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?_pp:stdgo.GoUIntptr, ?_when:haxe.Int64, ?_period:haxe.Int64, ?_f:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void, ?_arg:stdgo.AnyInterface, ?_seq:stdgo.GoUIntptr, ?_nextwhen:haxe.Int64, ?_status:std.UInt) this = new stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer((_pp : stdgo.GoUIntptr), (_when : stdgo.GoInt64), (_period : stdgo.GoInt64), _f, (_arg : stdgo.AnyInterface), (_seq : stdgo.GoUIntptr), (_nextwhen : stdgo.GoInt64), (_status : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
