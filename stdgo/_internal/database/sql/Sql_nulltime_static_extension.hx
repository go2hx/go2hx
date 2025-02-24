package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullTime_asInterface) class NullTime_static_extension {
    @:keep
    @:tdfield
    static public function value( _n:stdgo._internal.database.sql.Sql_nulltime.NullTime):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_nulltime.NullTime = _n?.__copy__();
        if (!_n.valid) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_n.time)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nulltime.NullTime>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_nulltime.NullTime> = _n;
        if (_value == null) {
            {
                final __tmp__0 = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
                final __tmp__1 = false;
                (@:checkr _n ?? throw "null pointer dereference").time = __tmp__0;
                (@:checkr _n ?? throw "null pointer dereference").valid = __tmp__1;
            };
            return (null : stdgo.Error);
        };
        (@:checkr _n ?? throw "null pointer dereference").valid = true;
        return stdgo._internal.database.sql.Sql__convertassign._convertAssign(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _n ?? throw "null pointer dereference").time) : stdgo.Ref<stdgo._internal.time.Time_time.Time>))), _value);
    }
}
