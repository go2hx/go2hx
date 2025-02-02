package stdgo._internal.log.slog;
function any(_key:stdgo.GoString, _value:stdgo.AnyInterface):stdgo._internal.log.slog.Slog_Attr.Attr {
        return (new stdgo._internal.log.slog.Slog_Attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_anyValue.anyValue(_value)?.__copy__()) : stdgo._internal.log.slog.Slog_Attr.Attr);
    }
