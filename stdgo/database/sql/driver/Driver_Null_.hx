package stdgo.database.sql.driver;
@:structInit @:using(stdgo.database.sql.driver.Driver.Null__static_extension) abstract Null_(stdgo._internal.database.sql.driver.Driver_Null_.Null_) from stdgo._internal.database.sql.driver.Driver_Null_.Null_ to stdgo._internal.database.sql.driver.Driver_Null_.Null_ {
    public var converter(get, set) : ValueConverter;
    function get_converter():ValueConverter return this.converter;
    function set_converter(v:ValueConverter):ValueConverter {
        this.converter = v;
        return v;
    }
    public function new(?converter:ValueConverter) this = new stdgo._internal.database.sql.driver.Driver_Null_.Null_(converter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
