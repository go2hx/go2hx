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
function _describeNamedValue(_nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):stdgo.GoString {
        if (((@:checkr _nv ?? throw "null pointer dereference").name.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("$%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").ordinal))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("with name %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").name))?.__copy__();
    }
