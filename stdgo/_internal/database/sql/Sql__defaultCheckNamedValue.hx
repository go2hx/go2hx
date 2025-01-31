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
function _defaultCheckNamedValue(_nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):stdgo.Error {
        var _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.database.sql.driver.Driver_defaultParameterConverter.defaultParameterConverter.convertValue(stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").value));
            (@:checkr _nv ?? throw "null pointer dereference").value = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return _err;
    }
