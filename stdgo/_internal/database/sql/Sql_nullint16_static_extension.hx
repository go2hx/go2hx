package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullInt16_asInterface) class NullInt16_static_extension {
    @:keep
    @:tdfield
    static public function value( _n:stdgo._internal.database.sql.Sql_nullint16.NullInt16):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_nullint16.NullInt16 = _n?.__copy__();
        if (!_n.valid) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.toInterface((_n.int16 : stdgo.GoInt64)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nullint16.NullInt16>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nullint16.NullInt16> = _n;
        if (_value == null) {
            {
                final __tmp__0 = (0 : stdgo.GoInt16);
                final __tmp__1 = false;
                (@:checkr _n ?? throw "null pointer dereference").int16 = __tmp__0;
                (@:checkr _n ?? throw "null pointer dereference").valid = __tmp__1;
            };
            return (null : stdgo.Error);
        };
        var _err = (stdgo._internal.database.sql.Sql__convertassign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference").int16)), _value) : stdgo.Error);
        (@:checkr _n ?? throw "null pointer dereference").valid = _err == null;
        return _err;
    }
}
