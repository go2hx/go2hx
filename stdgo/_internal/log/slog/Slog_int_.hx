package stdgo._internal.log.slog;
function int_(_key:stdgo.GoString, _value:stdgo.GoInt):stdgo._internal.log.slog.Slog_attr.Attr {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/attr.go#L31"
        return stdgo._internal.log.slog.Slog_int64.int64(_key?.__copy__(), (_value : stdgo.GoInt64))?.__copy__();
    }
