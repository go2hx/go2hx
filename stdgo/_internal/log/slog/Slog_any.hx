package stdgo._internal.log.slog;
function any(_key:stdgo.GoString, _value:stdgo.AnyInterface):stdgo._internal.log.slog.Slog_attr.Attr {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/attr.go#L86"
        return (new stdgo._internal.log.slog.Slog_attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_anyvalue.anyValue(_value)?.__copy__()) : stdgo._internal.log.slog.Slog_attr.Attr);
    }
