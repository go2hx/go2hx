package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_hcode_static_extension) abstract T_hcode(stdgo._internal.compress.flate.Flate_T_hcode.T_hcode) from stdgo._internal.compress.flate.Flate_T_hcode.T_hcode to stdgo._internal.compress.flate.Flate_T_hcode.T_hcode {
    public var _code(get, set) : std.UInt;
    function get__code():std.UInt return this._code;
    function set__code(v:std.UInt):std.UInt {
        this._code = (v : stdgo.GoUInt16);
        return v;
    }
    public var _len(get, set) : std.UInt;
    function get__len():std.UInt return this._len;
    function set__len(v:std.UInt):std.UInt {
        this._len = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?_code:std.UInt, ?_len:std.UInt) this = new stdgo._internal.compress.flate.Flate_T_hcode.T_hcode((_code : stdgo.GoUInt16), (_len : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
