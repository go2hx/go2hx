package stdgo._internal.log.slog;
function string(_key:stdgo.GoString, _value:stdgo.GoString):stdgo._internal.log.slog.Slog_Attr.Attr {
        return (new stdgo._internal.log.slog.Slog_Attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_stringValue.stringValue(_value?.__copy__())?.__copy__()) : stdgo._internal.log.slog.Slog_Attr.Attr);
    }
