package stdgo.time;
@:structInit @:using(stdgo.time.Time.T_zoneTrans_static_extension) abstract T_zoneTrans(stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans) from stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans to stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans {
    public var _when(get, set) : haxe.Int64;
    function get__when():haxe.Int64 return this._when;
    function set__when(v:haxe.Int64):haxe.Int64 {
        this._when = (v : stdgo.GoInt64);
        return v;
    }
    public var _index(get, set) : std.UInt;
    function get__index():std.UInt return this._index;
    function set__index(v:std.UInt):std.UInt {
        this._index = (v : stdgo.GoUInt8);
        return v;
    }
    public var _isstd(get, set) : Bool;
    function get__isstd():Bool return this._isstd;
    function set__isstd(v:Bool):Bool {
        this._isstd = v;
        return v;
    }
    public var _isutc(get, set) : Bool;
    function get__isutc():Bool return this._isutc;
    function set__isutc(v:Bool):Bool {
        this._isutc = v;
        return v;
    }
    public function new(?_when:haxe.Int64, ?_index:std.UInt, ?_isstd:Bool, ?_isutc:Bool) this = new stdgo._internal.time.Time_T_zoneTrans.T_zoneTrans((_when : stdgo.GoInt64), (_index : stdgo.GoUInt8), _isstd, _isutc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
