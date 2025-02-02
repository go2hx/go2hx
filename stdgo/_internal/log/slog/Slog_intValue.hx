package stdgo._internal.log.slog;
function intValue(_v:stdgo.GoInt):stdgo._internal.log.slog.Slog_Value.Value {
        return stdgo._internal.log.slog.Slog_int64Value.int64Value((_v : stdgo.GoInt64))?.__copy__();
    }
