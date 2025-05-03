package stdgo._internal.log.slog;
function string(_key:stdgo.GoString, _value:stdgo.GoString):stdgo._internal.log.slog.Slog_attr.Attr {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/attr.go#L20"
        return (new stdgo._internal.log.slog.Slog_attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_stringvalue.stringValue(_value?.__copy__())?.__copy__()) : stdgo._internal.log.slog.Slog_attr.Attr);
    }
