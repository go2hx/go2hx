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
function _namedValueToValue(_named:stdgo.Slice<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):{ var _0 : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>; var _1 : stdgo.Error; } {
        var _dargs = (new stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>((_named.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>);
        for (_n => _param in _named) {
            if (((_param.name.length) > (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (null : stdgo.Slice<stdgo._internal.database.sql.driver.Driver_Value.Value>), _1 : stdgo._internal.errors.Errors_new_.new_(("sql: driver does not support the use of Named Parameters" : stdgo.GoString)) };
            };
            _dargs[(_n : stdgo.GoInt)] = _param.value;
        };
        return { _0 : _dargs, _1 : (null : stdgo.Error) };
    }
