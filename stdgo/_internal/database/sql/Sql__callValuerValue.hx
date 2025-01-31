package stdgo._internal.database.sql;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.database.sql.driver.Driver;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.io.Io;
function _callValuerValue(_vr:stdgo._internal.database.sql.driver.Driver_Valuer.Valuer):{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } {
        var _v = (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _err = (null : stdgo.Error);
        {
            var _rv = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_vr))?.__copy__() : stdgo._internal.reflect.Reflect_Value.Value);
            if (((_rv.kind() == ((22u32 : stdgo._internal.reflect.Reflect_Kind.Kind)) && _rv.isNil() : Bool) && _rv.type().elem().implements_(stdgo._internal.database.sql.Sql__valuerReflectType._valuerReflectType) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.database.sql.driver.Driver_Value.Value), _1 : (null : stdgo.Error) };
                    _v = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo._internal.database.sql.driver.Driver_Value.Value; var _1 : stdgo.Error; } = _vr.value();
            _v = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
