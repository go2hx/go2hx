package stdgo._internal.log.slog;
function float64Value(_v:stdgo.GoFloat64):stdgo._internal.log.slog.Slog_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L130"
        return ({ _num : stdgo._internal.math.Math_float64bits.float64bits(_v), _any : stdgo.Go.toInterface(stdgo.Go.asInterface((3 : stdgo._internal.log.slog.Slog_kind.Kind))) } : stdgo._internal.log.slog.Slog_value.Value);
    }
