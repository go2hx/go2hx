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
@:keep @:follow @:using(stdgo._internal.database.sql.Sql_Row_static_extension.Row_static_extension) typedef RowPointer = stdgo.Pointer<stdgo._internal.database.sql.Sql_Row.Row>;
