package stdgo._internal.database.sql.driver;
@:keep @:allow(stdgo._internal.database.sql.driver.Driver.Null__asInterface) class Null__static_extension {
    @:keep
    static public function convertValue( _n:stdgo._internal.database.sql.driver.Driver_Null_.Null_, _v:stdgo.AnyInterface):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.driver.Driver_Null_.Null_ = _n?.__copy__();
        if (_v == null) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
        };
        return _n.converter.convertValue(_v);
    }
}