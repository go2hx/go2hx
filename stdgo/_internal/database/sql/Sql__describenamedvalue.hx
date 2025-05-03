package stdgo._internal.database.sql;
function _describeNamedValue(_nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L24"
        if (((@:checkr _nv ?? throw "null pointer dereference").name.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L25"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("$%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").ordinal))?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/database/sql/convert.go#L27"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("with name %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").name))?.__copy__();
    }
