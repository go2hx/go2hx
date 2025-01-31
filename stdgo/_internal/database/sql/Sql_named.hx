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
function named(_name:stdgo.GoString, _value:stdgo.AnyInterface):stdgo._internal.database.sql.Sql_NamedArg.NamedArg {
        return ({ name : _name?.__copy__(), value : _value } : stdgo._internal.database.sql.Sql_NamedArg.NamedArg);
    }
