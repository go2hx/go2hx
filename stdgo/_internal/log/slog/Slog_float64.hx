package stdgo._internal.log.slog;
function float64(_key:stdgo.GoString, _v:stdgo.GoFloat64):stdgo._internal.log.slog.Slog_attr.Attr {
        return (new stdgo._internal.log.slog.Slog_attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_float64value.float64Value(_v)?.__copy__()) : stdgo._internal.log.slog.Slog_attr.Attr);
    }
