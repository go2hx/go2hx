package stdgo._internal.database.sql.driver;
function _callValuerValue(_vr:stdgo._internal.database.sql.driver.Driver_valuer.Valuer):{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } {
        var _v = (null : stdgo._internal.database.sql.driver.Driver_value.Value), _err = (null : stdgo.Error);
        {
            var _rv = (stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(_vr))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if (((_rv.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _rv.isNil() : Bool) && _rv.type().elem().implements_(stdgo._internal.database.sql.driver.Driver__valuerreflecttype._valuerReflectType) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.database.sql.driver.Driver_value.Value; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.driver.Driver_value.Value), _1 : (null : stdgo.Error) };
                    _v = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__ = _vr.value();
            _v = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _v, _1 : _err };
        };
    }
