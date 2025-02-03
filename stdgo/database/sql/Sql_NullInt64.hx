package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.NullInt64_static_extension) abstract NullInt64(stdgo._internal.database.sql.Sql_NullInt64.NullInt64) from stdgo._internal.database.sql.Sql_NullInt64.NullInt64 to stdgo._internal.database.sql.Sql_NullInt64.NullInt64 {
    public var int64(get, set) : haxe.Int64;
    function get_int64():haxe.Int64 return this.int64;
    function set_int64(v:haxe.Int64):haxe.Int64 {
        this.int64 = (v : stdgo.GoInt64);
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?int64:haxe.Int64, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullInt64.NullInt64((int64 : stdgo.GoInt64), valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
