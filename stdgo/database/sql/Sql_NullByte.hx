package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.NullByte_static_extension) abstract NullByte(stdgo._internal.database.sql.Sql_NullByte.NullByte) from stdgo._internal.database.sql.Sql_NullByte.NullByte to stdgo._internal.database.sql.Sql_NullByte.NullByte {
    public var byte(get, set) : std.UInt;
    function get_byte():std.UInt return this.byte;
    function set_byte(v:std.UInt):std.UInt {
        this.byte = (v : stdgo.GoUInt8);
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?byte:std.UInt, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullByte.NullByte((byte : stdgo.GoUInt8), valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
