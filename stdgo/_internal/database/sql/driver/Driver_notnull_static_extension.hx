package stdgo._internal.database.sql.driver;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.NotNull_asInterface) class NotNull_static_extension {
    @:keep
    @:tdfield
    static public function convertValue( _n:stdgo._internal.database.sql.driver.Driver_notnull.NotNull, _v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.driver.Driver_notnull.NotNull = _n?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L169"
        if (_v == null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L170"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("nil value not allowed" : stdgo.GoString)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L172"
        return _n.converter.convertValue(_v);
    }
}
