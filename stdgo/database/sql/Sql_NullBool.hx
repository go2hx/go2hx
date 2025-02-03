package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.NullBool_static_extension) abstract NullBool(stdgo._internal.database.sql.Sql_NullBool.NullBool) from stdgo._internal.database.sql.Sql_NullBool.NullBool to stdgo._internal.database.sql.Sql_NullBool.NullBool {
    public var bool_(get, set) : Bool;
    function get_bool_():Bool return this.bool_;
    function set_bool_(v:Bool):Bool {
        this.bool_ = v;
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?bool_:Bool, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullBool.NullBool(bool_, valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
