package stdgo._internal.log.slog;
function duration(_key:stdgo.GoString, _v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.log.slog.Slog_Attr.Attr {
        return (new stdgo._internal.log.slog.Slog_Attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_durationValue.durationValue(_v)?.__copy__()) : stdgo._internal.log.slog.Slog_Attr.Attr);
    }
