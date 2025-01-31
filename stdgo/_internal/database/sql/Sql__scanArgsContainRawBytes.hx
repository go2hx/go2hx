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
function _scanArgsContainRawBytes(_args:stdgo.Slice<stdgo.AnyInterface>):Bool {
        for (__19 => _a in _args) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_a : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>)) : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.database.sql.Sql_RawBytes.RawBytes>), _1 : false };
                }, __20 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    return true;
                };
            };
        };
        return false;
    }
