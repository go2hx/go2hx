package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullString_asInterface) class NullString_static_extension {
    @:keep
    @:tdfield
    static public function value( _ns:stdgo._internal.database.sql.Sql_NullString.NullString):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _ns:stdgo._internal.database.sql.Sql_NullString.NullString = _ns?.__copy__();
        if (!_ns.valid) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.toInterface(_ns.string), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _ns:stdgo.Ref<stdgo._internal.database.sql.Sql_NullString.NullString>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _ns:stdgo.Ref<stdgo._internal.database.sql.Sql_NullString.NullString> = _ns;
        if (_value == null) {
            {
                final __tmp__0 = stdgo.Go.str()?.__copy__();
                final __tmp__1 = false;
                (@:checkr _ns ?? throw "null pointer dereference").string = __tmp__0;
                (@:checkr _ns ?? throw "null pointer dereference").valid = __tmp__1;
            };
            return (null : stdgo.Error);
        };
        (@:checkr _ns ?? throw "null pointer dereference").valid = true;
        return stdgo._internal.database.sql.Sql__convertAssign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _ns ?? throw "null pointer dereference").string)), _value);
    }
}
