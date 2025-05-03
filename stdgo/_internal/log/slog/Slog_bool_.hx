package stdgo._internal.log.slog;
function bool_(_key:stdgo.GoString, _v:Bool):stdgo._internal.log.slog.Slog_attr.Attr {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/attr.go#L46"
        return (new stdgo._internal.log.slog.Slog_attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_boolvalue.boolValue(_v)?.__copy__()) : stdgo._internal.log.slog.Slog_attr.Attr);
    }
