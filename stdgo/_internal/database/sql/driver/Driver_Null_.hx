package stdgo._internal.database.sql.driver;
@:structInit @:using(stdgo._internal.database.sql.driver.Driver_Null__static_extension.Null__static_extension) class Null_ {
    public var converter : stdgo._internal.database.sql.driver.Driver_ValueConverter.ValueConverter = (null : stdgo._internal.database.sql.driver.Driver_ValueConverter.ValueConverter);
    public function new(?converter:stdgo._internal.database.sql.driver.Driver_ValueConverter.ValueConverter) {
        if (converter != null) this.converter = converter;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Null_(converter);
    }
}
