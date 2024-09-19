package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullFloat64_asInterface) class NullFloat64_static_extension {
    @:keep
    static public function value( _n:stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64 = _n?.__copy__();
        if (!_n.valid) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.toInterface(_n.float64), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullFloat64.NullFloat64> = _n;
        if (_value == null) {
            {
                final __tmp__0 = (0 : stdgo.GoFloat64);
                final __tmp__1 = false;
                _n.float64 = __tmp__0;
                _n.valid = __tmp__1;
            };
            return (null : stdgo.Error);
        };
        _n.valid = true;
        return stdgo._internal.database.sql.Sql__convertAssign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer(_n.float64)), _value);
    }
}
