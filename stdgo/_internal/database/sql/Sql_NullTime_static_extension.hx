package stdgo._internal.database.sql;
@:keep @:allow(stdgo._internal.database.sql.Sql.NullTime_asInterface) class NullTime_static_extension {
    @:keep
    static public function value( _n:stdgo._internal.database.sql.Sql_NullTime.NullTime):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo._internal.database.sql.Sql_NullTime.NullTime = _n?.__copy__();
        if (!_n.valid) {
            return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
        };
        return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_n.time)), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function scan( _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullTime.NullTime>, _value:stdgo.AnyInterface):stdgo.Error {
        @:recv var _n:stdgo.Ref<stdgo._internal.database.sql.Sql_NullTime.NullTime> = _n;
        if (_value == null) {
            {
                final __tmp__0 = (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
                final __tmp__1 = false;
                _n.time = __tmp__0;
                _n.valid = __tmp__1;
            };
            return (null : stdgo.Error);
        };
        _n.valid = true;
        return stdgo._internal.database.sql.Sql__convertAssign._convertAssign(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_n.time) : stdgo.Ref<stdgo._internal.time.Time_Time.Time>))), _value);
    }
}