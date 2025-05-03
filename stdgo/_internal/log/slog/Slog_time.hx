package stdgo._internal.log.slog;
function time(_key:stdgo.GoString, _v:stdgo._internal.time.Time_time.Time):stdgo._internal.log.slog.Slog_attr.Attr {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/attr.go#L52"
        return (new stdgo._internal.log.slog.Slog_attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_timevalue.timeValue(_v?.__copy__())?.__copy__()) : stdgo._internal.log.slog.Slog_attr.Attr);
    }
