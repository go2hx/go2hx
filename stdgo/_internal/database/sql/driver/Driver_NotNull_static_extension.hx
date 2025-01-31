package stdgo._internal.database.sql.driver;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.NotNull_asInterface) class NotNull_static_extension {
    @:keep
    @:tdfield
    static public function convertValue( _n:stdgo._internal.database.sql.driver.Driver_NotNull.NotNull, _v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.driver.Driver_NotNull.NotNull = _n?.__copy__();
        if (_v == null) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("nil value not allowed" : stdgo.GoString)) };
        };
        return _n.converter.convertValue(_v);
    }
}
