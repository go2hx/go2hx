package stdgo._internal.log.slog;
function int64Value(_v:stdgo.GoInt64):stdgo._internal.log.slog.Slog_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L120"
        return ({ _num : (_v : stdgo.GoUInt64), _any : stdgo.Go.toInterface(stdgo.Go.asInterface((4 : stdgo._internal.log.slog.Slog_kind.Kind))) } : stdgo._internal.log.slog.Slog_value.Value);
    }
