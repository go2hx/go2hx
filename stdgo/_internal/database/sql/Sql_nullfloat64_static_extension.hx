package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullFloat64_asInterface) class NullFloat64_static_extension {
    @:keep
    @:tdfield
    static public function value( _n:stdgo._internal.database.sql.Sql_nullfloat64.NullFloat64):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_nullfloat64.NullFloat64 = _n?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L336"
        if (!_n.valid) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L337"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L339"
        return { _0 : stdgo.Go.toInterface(_n.float64), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nullfloat64.NullFloat64>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nullfloat64.NullFloat64> = _n;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L326"
        if (_value == null) {
            {
                final __tmp__0 = (0 : stdgo.GoFloat64);
                final __tmp__1 = false;
                (@:checkr _n ?? throw "null pointer dereference").float64 = @:binopAssign __tmp__0;
                (@:checkr _n ?? throw "null pointer dereference").valid = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L328"
            return (null : stdgo.Error);
        };
        (@:checkr _n ?? throw "null pointer dereference").valid = true;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L331"
        return stdgo._internal.database.sql.Sql__convertassign._convertAssign(stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _n ?? throw "null pointer dereference").float64)), _value);
    }
}
