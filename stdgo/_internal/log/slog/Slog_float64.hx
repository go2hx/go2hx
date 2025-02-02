package stdgo._internal.log.slog;
function float64(_key:stdgo.GoString, _v:stdgo.GoFloat64):stdgo._internal.log.slog.Slog_Attr.Attr {
        return (new stdgo._internal.log.slog.Slog_Attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_float64Value.float64Value(_v)?.__copy__()) : stdgo._internal.log.slog.Slog_Attr.Attr);
    }
