package stdgo.compress.flate;
@:structInit @:using(stdgo.compress.flate.Flate.T_tableEntry_static_extension) abstract T_tableEntry(stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry) from stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry to stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry {
    public var _val(get, set) : std.UInt;
    function get__val():std.UInt return this._val;
    function set__val(v:std.UInt):std.UInt {
        this._val = (v : stdgo.GoUInt32);
        return v;
    }
    public var _offset(get, set) : StdTypes.Int;
    function get__offset():StdTypes.Int return this._offset;
    function set__offset(v:StdTypes.Int):StdTypes.Int {
        this._offset = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_val:std.UInt, ?_offset:StdTypes.Int) this = new stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry((_val : stdgo.GoUInt32), (_offset : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
