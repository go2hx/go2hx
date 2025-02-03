package stdgo.database.sql.driver;
@:structInit @:using(stdgo.database.sql.driver.Driver.NamedValue_static_extension) abstract NamedValue(stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue) from stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue to stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var ordinal(get, set) : StdTypes.Int;
    function get_ordinal():StdTypes.Int return this.ordinal;
    function set_ordinal(v:StdTypes.Int):StdTypes.Int {
        this.ordinal = (v : stdgo.GoInt);
        return v;
    }
    public var value(get, set) : Value;
    function get_value():Value return this.value;
    function set_value(v:Value):Value {
        this.value = v;
        return v;
    }
    public function new(?name:String, ?ordinal:StdTypes.Int, ?value:Value) this = new stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue((name : stdgo.GoString), (ordinal : stdgo.GoInt), value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
