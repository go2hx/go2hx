package stdgo._internal.database.sql.driver;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.Null__asInterface) class Null__static_extension {
    @:keep
    @:tdfield
    static public function convertValue( _n:stdgo._internal.database.sql.driver.Driver_null_.Null_, _v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.driver.Driver_null_.Null_ = _n?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L156"
        if (_v == null) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L157"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/driver/types.go#L159"
        return _n.converter.convertValue(_v);
    }
}
