package stdgo.regexp;
@:structInit @:using(stdgo.regexp.Regexp.T_inputBytes_static_extension) abstract T_inputBytes(stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes) from stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes to stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes {
    public var _str(get, set) : Array<std.UInt>;
    function get__str():Array<std.UInt> return [for (i in this._str) i];
    function set__str(v:Array<std.UInt>):Array<std.UInt> {
        this._str = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_str:Array<std.UInt>) this = new stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes(([for (i in _str) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
