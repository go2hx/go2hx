package stdgo._internal.log.slog;
function uint64Value(_v:stdgo.GoUInt64):stdgo._internal.log.slog.Slog_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L125"
        return ({ _num : _v, _any : stdgo.Go.toInterface(stdgo.Go.asInterface((7 : stdgo._internal.log.slog.Slog_kind.Kind))) } : stdgo._internal.log.slog.Slog_value.Value);
    }
