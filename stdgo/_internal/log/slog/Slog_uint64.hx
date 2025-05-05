package stdgo._internal.log.slog;
function uint64(_key:stdgo.GoString, _v:stdgo.GoUInt64):stdgo._internal.log.slog.Slog_attr.Attr {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/attr.go#L36"
        return (new stdgo._internal.log.slog.Slog_attr.Attr(_key?.__copy__(), stdgo._internal.log.slog.Slog_uint64value.uint64Value(_v)?.__copy__()) : stdgo._internal.log.slog.Slog_attr.Attr);
    }
