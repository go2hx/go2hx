package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullTime_asInterface) class NullTime_static_extension {
    @:keep
    @:tdfield
    static public function value( _n:stdgo._internal.database.sql.Sql_nulltime.NullTime):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_nulltime.NullTime = _n?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L388"
        if (!_n.valid) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L389"
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L391"
        return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_n.time)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nulltime.NullTime>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nulltime.NullTime> = _n;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L378"
        if (_value == null) {
            {
                final __tmp__0 = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
                final __tmp__1 = false;
                (@:checkr _n ?? throw "null pointer dereference").time = @:binopAssign __tmp__0;
                (@:checkr _n ?? throw "null pointer dereference").valid = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L380"
            return (null : stdgo.Error);
        };
        (@:checkr _n ?? throw "null pointer dereference").valid = true;
        //"file:///home/runner/.go/go1.21.3/src/database/sql/sql.go#L383"
        return stdgo._internal.database.sql.Sql__convertassign._convertAssign(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _n ?? throw "null pointer dereference").time) : stdgo.Ref<stdgo._internal.time.Time_time.Time>))), _value);
    }
}
