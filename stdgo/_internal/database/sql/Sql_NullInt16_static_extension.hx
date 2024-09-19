package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullInt16_asInterface) class NullInt16_static_extension {
    @:keep
    static public function value( _n:stdgo._internal.database.sql.Sql_NullInt16.NullInt16):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_NullInt16.NullInt16 = _n?.__copy__();
        if (!_n.valid) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.toInterface((_n.int16 : stdgo.GoInt64)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullInt16.NullInt16>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullInt16.NullInt16> = _n;
        if (_value == null) {
            {
                final __tmp__0 = (0 : stdgo.GoInt16);
                final __tmp__1 = false;
                _n.int16 = __tmp__0;
                _n.valid = __tmp__1;
            };
            return (null : stdgo.Error);
        };
        var _err = (stdgo._internal.database.sql.Sql__convertAssign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer(_n.int16)), _value) : stdgo.Error);
        _n.valid = _err == null;
        return _err;
    }
}
