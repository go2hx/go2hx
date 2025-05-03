package stdgo._internal.log.slog;
function float64(_key:stdgo.GoString, _v:stdgo.GoFloat64):stdgo._internal.log.slog.Slog_attr.Attr {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/attr.go#L41"
        return (new stdgo._internal.log.slog.Slog_attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_float64value.float64Value(_v)?.__copy__()) : stdgo._internal.log.slog.Slog_attr.Attr);
    }
