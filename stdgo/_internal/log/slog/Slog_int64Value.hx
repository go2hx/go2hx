package stdgo._internal.log.slog;
function int64Value(_v:stdgo.GoInt64):stdgo._internal.log.slog.Slog_Value.Value {
        return ({ _num : (_v : stdgo.GoUInt64), _any : stdgo.Go.toInterface(stdgo.Go.asInterface((4 : stdgo._internal.log.slog.Slog_Kind.Kind))) } : stdgo._internal.log.slog.Slog_Value.Value);
    }
