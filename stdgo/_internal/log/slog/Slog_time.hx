package stdgo._internal.log.slog;
function time(_key:stdgo.GoString, _v:stdgo._internal.time.Time_Time.Time):stdgo._internal.log.slog.Slog_Attr.Attr {
        return (new stdgo._internal.log.slog.Slog_Attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_timeValue.timeValue(_v?.__copy__())?.__copy__()) : stdgo._internal.log.slog.Slog_Attr.Attr);
    }
