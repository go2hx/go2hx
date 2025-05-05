package stdgo._internal.log.slog.internal.slogtest;
function removeTime(_groups:stdgo.Slice<stdgo.GoString>, _a:stdgo._internal.log.slog.Slog_attr.Attr):stdgo._internal.log.slog.Slog_attr.Attr {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/slogtest/slogtest.go#L14"
        if (((_a.key == ("time" : stdgo.GoString)) && (_groups.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/slogtest/slogtest.go#L15"
            return (new stdgo._internal.log.slog.Slog_attr.Attr() : stdgo._internal.log.slog.Slog_attr.Attr);
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/internal/slogtest/slogtest.go#L17"
        return _a?.__copy__();
    }
