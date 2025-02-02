package stdgo._internal.log.slog;
function int64(_key:stdgo.GoString, _value:stdgo.GoInt64):stdgo._internal.log.slog.Slog_Attr.Attr {
        return (new stdgo._internal.log.slog.Slog_Attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_int64Value.int64Value(_value)?.__copy__()) : stdgo._internal.log.slog.Slog_Attr.Attr);
    }
