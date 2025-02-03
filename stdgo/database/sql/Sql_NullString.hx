package stdgo.database.sql;
@:structInit @:using(stdgo.database.sql.Sql.NullString_static_extension) abstract NullString(stdgo._internal.database.sql.Sql_NullString.NullString) from stdgo._internal.database.sql.Sql_NullString.NullString to stdgo._internal.database.sql.Sql_NullString.NullString {
    public var string(get, set) : String;
    function get_string():String return this.string;
    function set_string(v:String):String {
        this.string = (v : stdgo.GoString);
        return v;
    }
    public var valid(get, set) : Bool;
    function get_valid():Bool return this.valid;
    function set_valid(v:Bool):Bool {
        this.valid = v;
        return v;
    }
    public function new(?string:String, ?valid:Bool) this = new stdgo._internal.database.sql.Sql_NullString.NullString((string : stdgo.GoString), valid);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
