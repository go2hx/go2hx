package stdgo._internal.database.sql;
function _describeNamedValue(_nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_namedvalue.NamedValue>):stdgo.GoString {
        if (((@:checkr _nv ?? throw "null pointer dereference").name.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("$%d" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").ordinal))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("with name %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _nv ?? throw "null pointer dereference").name))?.__copy__();
    }
