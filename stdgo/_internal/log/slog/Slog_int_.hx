package stdgo._internal.log.slog;
function int_(_key:stdgo.GoString, _value:stdgo.GoInt):stdgo._internal.log.slog.Slog_attr.Attr {
        return stdgo._internal.log.slog.Slog_int64.int64(_key?.__copy__(), (_value : stdgo.GoInt64))?.__copy__();
    }
