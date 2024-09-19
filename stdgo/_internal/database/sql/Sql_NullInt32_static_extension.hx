package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullInt32_asInterface) class NullInt32_static_extension {
    @:keep
    static public function value( _n:stdgo._internal.database.sql.Sql_NullInt32.NullInt32):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_NullInt32.NullInt32 = _n?.__copy__();
        if (!_n.valid) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.toInterface((_n.int32 : stdgo.GoInt64)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullInt32.NullInt32>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullInt32.NullInt32> = _n;
        if (_value == null) {
            {
                final __tmp__0 = (0 : stdgo.GoInt32);
                final __tmp__1 = false;
                _n.int32 = __tmp__0;
                _n.valid = __tmp__1;
            };
            return (null : stdgo.Error);
        };
        _n.valid = true;
        return stdgo._internal.database.sql.Sql__convertAssign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer(_n.int32)), _value);
    }
}
