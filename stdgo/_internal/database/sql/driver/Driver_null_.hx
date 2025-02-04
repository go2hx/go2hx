package stdgo._internal.database.sql.driver;
@:structInit @:using(stdgo._internal.database.sql.driver.Driver_null__static_extension.Null__static_extension) class Null_ {
    public var converter : stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter = (null : stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter);
    public function new(?converter:stdgo._internal.database.sql.driver.Driver_valueconverter.ValueConverter) {
        if (converter != null) this.converter = converter;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Null_(converter);
    }
}
