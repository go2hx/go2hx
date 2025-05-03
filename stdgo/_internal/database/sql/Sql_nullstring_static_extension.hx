package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullString_asInterface) class NullString_static_extension {
    @:keep
    @:tdfield
    static public function value( _ns:stdgo._internal.database.sql.Sql_nullstring.NullString):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _ns:stdgo._internal.database.sql.Sql_nullstring.NullString = _ns?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L204"
        if (!_ns.valid) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L205"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L207"
        return { _0 : stdgo.Go.toInterface(_ns.string), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _ns:stdgo.Ref<stdgo._internal.database.sql.Sql_nullstring.NullString>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _ns:stdgo.Ref<stdgo._internal.database.sql.Sql_nullstring.NullString> = _ns;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L194"
        if (_value == null) {
            {
                final __tmp__0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                final __tmp__1 = false;
                (@:checkr _ns ?? throw "null pointer dereference").string = @:binopAssign __tmp__0;
                (@:checkr _ns ?? throw "null pointer dereference").valid = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L196"
            return (null : stdgo.Error);
        };
        (@:checkr _ns ?? throw "null pointer dereference").valid = true;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L199"
        return stdgo._internal.database.sql.Sql__convertassign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _ns ?? throw "null pointer dereference").string)), _value);
    }
}
