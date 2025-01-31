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
function _validateNamedValueName(_name:stdgo.GoString):stdgo.Error {
        if ((_name.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_name?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __19:stdgo.GoInt = __tmp__._1;
        if (stdgo._internal.unicode.Unicode_isLetter.isLetter(_r)) {
            return (null : stdgo.Error);
        };
        return stdgo._internal.fmt.Fmt_errorf.errorf(("name %q does not begin with a letter" : stdgo.GoString), stdgo.Go.toInterface(_name));
    }
