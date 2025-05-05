package stdgo._internal.log.slog;
function durationValue(_v:stdgo._internal.time.Time_duration.Duration):stdgo._internal.log.slog.Slog_value.Value {
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L161"
        return ({ _num : (_v.nanoseconds() : stdgo.GoUInt64), _any : stdgo.Go.toInterface(stdgo.Go.asInterface((2 : stdgo._internal.log.slog.Slog_kind.Kind))) } : stdgo._internal.log.slog.Slog_value.Value);
    }
