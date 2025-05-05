package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullByte_asInterface) class NullByte_static_extension {
    @:keep
    @:tdfield
    static public function value( _n:stdgo._internal.database.sql.Sql_nullbyte.NullByte):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_nullbyte.NullByte = _n?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L310"
        if (!_n.valid) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L311"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L313"
        return { _0 : stdgo.Go.toInterface((_n.byte : stdgo.GoInt64)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nullbyte.NullByte>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nullbyte.NullByte> = _n;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L299"
        if (_value == null) {
            {
                final __tmp__0 = (0 : stdgo.GoUInt8);
                final __tmp__1 = false;
                (@:checkr _n ?? throw "null pointer dereference").byte = @:binopAssign __tmp__0;
                (@:checkr _n ?? throw "null pointer dereference").valid = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L301"
            return (null : stdgo.Error);
        };
        var _err = (stdgo._internal.database.sql.Sql__convertassign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference").byte)), _value) : stdgo.Error);
        (@:checkr _n ?? throw "null pointer dereference").valid = _err == null;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L305"
        return _err;
    }
}
