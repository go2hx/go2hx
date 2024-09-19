package stdgo._internal.database.sql;
function _callValuerValue(_vr:stdgo._internal.database.sql.driver.Driver_Valuer.Valuer):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        var _v = (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _err = (null : stdgo.Error);
        {
            var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_vr))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (((_rv.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _rv.isNil() : Bool) && _rv.type().elem().implements_(stdgo._internal.database.sql.Sql__valuerReflectType._valuerReflectType) : Bool)) {
                return { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
            };
        };
        return _vr.value();
    }
