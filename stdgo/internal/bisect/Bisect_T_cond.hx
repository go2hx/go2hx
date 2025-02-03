package stdgo.internal.bisect;
@:structInit @:using(stdgo.internal.bisect.Bisect.T_cond_static_extension) abstract T_cond(stdgo._internal.internal.bisect.Bisect_T_cond.T_cond) from stdgo._internal.internal.bisect.Bisect_T_cond.T_cond to stdgo._internal.internal.bisect.Bisect_T_cond.T_cond {
    public var _mask(get, set) : haxe.UInt64;
    function get__mask():haxe.UInt64 return this._mask;
    function set__mask(v:haxe.UInt64):haxe.UInt64 {
        this._mask = (v : stdgo.GoUInt64);
        return v;
    }
    public var _bits(get, set) : haxe.UInt64;
    function get__bits():haxe.UInt64 return this._bits;
    function set__bits(v:haxe.UInt64):haxe.UInt64 {
        this._bits = (v : stdgo.GoUInt64);
        return v;
    }
    public var _result(get, set) : Bool;
    function get__result():Bool return this._result;
    function set__result(v:Bool):Bool {
        this._result = v;
        return v;
    }
    public function new(?_mask:haxe.UInt64, ?_bits:haxe.UInt64, ?_result:Bool) this = new stdgo._internal.internal.bisect.Bisect_T_cond.T_cond((_mask : stdgo.GoUInt64), (_bits : stdgo.GoUInt64), _result);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
