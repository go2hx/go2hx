package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.NullInt32_static_extension) abstract NullInt32(stdgo._internal.database.sql.Sql_NullInt32.NullInt32) from stdgo._internal.database.sql.Sql_NullInt32.NullInt32 to stdgo._internal.database.sql.Sql_NullInt32.NullInt32 {
    public var int32(get, set) : StdTypes.Int;
    function get_int32():StdTypes.Int return this.int32;
    function set_int32(v:StdTypes.Int):StdTypes.Int {
        this.int32 = (v : stdgo.GoInt32);
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?int32:StdTypes.Int, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullInt32.NullInt32((int32 : stdgo.GoInt32), valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
