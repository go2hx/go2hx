package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.NullInt16_static_extension) abstract NullInt16(stdgo._internal.database.sql.Sql_NullInt16.NullInt16) from stdgo._internal.database.sql.Sql_NullInt16.NullInt16 to stdgo._internal.database.sql.Sql_NullInt16.NullInt16 {
    public var int16(get, set) : StdTypes.Int;
    function get_int16():StdTypes.Int return this.int16;
    function set_int16(v:StdTypes.Int):StdTypes.Int {
        this.int16 = (v : stdgo.GoInt16);
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?int16:StdTypes.Int, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullInt16.NullInt16((int16 : stdgo.GoInt16), valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
