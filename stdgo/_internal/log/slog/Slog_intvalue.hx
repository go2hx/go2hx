package stdgo._internal.log.slog;
function intValue(_v:stdgo.GoInt):stdgo._internal.log.slog.Slog_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L115"
        return stdgo._internal.log.slog.Slog_int64value.int64Value((_v : stdgo.GoInt64))?.__copy__();
    }
