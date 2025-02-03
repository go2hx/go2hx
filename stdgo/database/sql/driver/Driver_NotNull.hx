package stdgo.database.sql.driver;
@:structInit @:using(stdgo.database.sql.driver.Driver.NotNull_static_extension) abstract NotNull(stdgo._internal.database.sql.driver.Driver_NotNull.NotNull) from stdgo._internal.database.sql.driver.Driver_NotNull.NotNull to stdgo._internal.database.sql.driver.Driver_NotNull.NotNull {
    public var converter(get, set) : ValueConverter;
    function get_converter():ValueConverter return this.converter;
    function set_converter(v:ValueConverter):ValueConverter {
        this.converter = v;
        return v;
    }
    public function new(?converter:ValueConverter) this = new stdgo._internal.database.sql.driver.Driver_NotNull.NotNull(converter);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
