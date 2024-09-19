package stdgo._internal.database.sql;
function _describeNamedValue(_nv:stdgo.Ref<stdgo._internal.database.sql.driver.Driver_NamedValue.NamedValue>):stdgo.GoString {
        if ((_nv.name.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("$%d" : stdgo.GoString), stdgo.Go.toInterface(_nv.ordinal))?.__copy__();
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("with name %q" : stdgo.GoString), stdgo.Go.toInterface(_nv.name))?.__copy__();
    }
