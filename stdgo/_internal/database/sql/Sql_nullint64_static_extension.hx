package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullInt64_asInterface) class NullInt64_static_extension {
    @:keep
    @:tdfield
    static public function value( _n:stdgo._internal.database.sql.Sql_nullint64.NullInt64):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_nullint64.NullInt64 = _n?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L230"
        if (!_n.valid) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L231"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L233"
        return { _0 : stdgo.Go.toInterface(_n.int64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nullint64.NullInt64>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nullint64.NullInt64> = _n;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L220"
        if (_value == null) {
            {
                final __tmp__0 = (0i64 : stdgo.GoInt64);
                final __tmp__1 = false;
                (@:checkr _n ?? throw "null pointer dereference").int64 = @:binopAssign __tmp__0;
                (@:checkr _n ?? throw "null pointer dereference").valid = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L222"
            return (null : stdgo.Error);
        };
        (@:checkr _n ?? throw "null pointer dereference").valid = true;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L225"
        return stdgo._internal.database.sql.Sql__convertassign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference").int64)), _value);
    }
}
