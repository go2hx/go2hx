package stdgo._internal.database.sql.driver;
@:structInit @:using(stdgo._internal.database.sql.driver.Driver_notnull_static_extension.NotNull_static_extension) class NotNull {
    public var converter : stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter = (null : stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter);
    public function new(?converter:stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter) {
        if (converter != null) this.converter = converter;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NotNull(converter);
    }
}
