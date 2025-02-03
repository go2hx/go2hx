package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.NullFloat64_static_extension) abstract NullFloat64(stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64) from stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64 to stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64 {
    public var float64(get, set) : StdTypes.Float;
    function get_float64():StdTypes.Float return this.float64;
    function set_float64(v:StdTypes.Float):StdTypes.Float {
        this.float64 = (v : stdgo.GoFloat64);
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?float64:StdTypes.Float, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64((float64 : stdgo.GoFloat64), valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
