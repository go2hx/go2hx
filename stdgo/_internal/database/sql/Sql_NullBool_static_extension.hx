package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullBool_asInterface) class NullBool_static_extension {
    @:keep
    static public function value( _n:stdgo._internal.database.sql.Sql_NullBool.NullBool):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_NullBool.NullBool = _n?.__copy__();
        if (!_n.valid) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.toInterface(_n.bool_), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullBool.NullBool>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullBool.NullBool> = _n;
        if (_value == null) {
            {
                final __tmp__0 = false;
                final __tmp__1 = false;
                _n.bool_ = __tmp__0;
                _n.valid = __tmp__1;
            };
            return (null : stdgo.Error);
        };
        _n.valid = true;
        return stdgo._internal.database.sql.Sql__convertAssign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer(_n.bool_)), _value);
    }
}
