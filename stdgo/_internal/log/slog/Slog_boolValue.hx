package stdgo._internal.log.slog;
function boolValue(_v:Bool):stdgo._internal.log.slog.Slog_Value.Value {
        var _u = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        if (_v) {
            _u = (1i64 : stdgo.GoUInt64);
        };
        return ({ _num : _u, _any : stdgo.Go.toInterface(stdgo.Go.asInterface((1 : stdgo._internal.log.slog.Slog_Kind.Kind))) } : stdgo._internal.log.slog.Slog_Value.Value);
    }
