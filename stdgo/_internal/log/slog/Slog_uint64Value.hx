package stdgo._internal.log.slog;
function uint64Value(_v:stdgo.GoUInt64):stdgo._internal.log.slog.Slog_Value.Value {
        return ({ _num : _v, _any : stdgo.Go.toInterface(stdgo.Go.asInterface((7 : stdgo._internal.log.slog.Slog_Kind.Kind))) } : stdgo._internal.log.slog.Slog_Value.Value);
    }
