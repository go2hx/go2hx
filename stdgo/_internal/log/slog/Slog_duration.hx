package stdgo._internal.log.slog;
function duration(_key:stdgo.GoString, _v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.log.slog.Slog_attr.Attr {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/attr.go#L57"
        return (new stdgo._internal.log.slog.Slog_attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_durationvalue.durationValue(_v)?.__copy__()) : stdgo._internal.log.slog.Slog_attr.Attr);
    }
