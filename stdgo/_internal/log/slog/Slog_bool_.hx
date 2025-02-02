package stdgo._internal.log.slog;
function bool_(_key:stdgo.GoString, _v:Bool):stdgo._internal.log.slog.Slog_Attr.Attr {
        return (new stdgo._internal.log.slog.Slog_Attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_boolValue.boolValue(_v)?.__copy__()) : stdgo._internal.log.slog.Slog_Attr.Attr);
    }
