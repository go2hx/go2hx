package stdgo._internal.log.slog;
function boolValue(_v:Bool):stdgo._internal.log.slog.Slog_value.Value {
        var _u = ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L136"
        if (_v) {
            _u = (1i64 : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L139"
        return ({ _num : _u, _any : stdgo.Go.toInterface(stdgo.Go.asInterface((1 : stdgo._internal.log.slog.Slog_kind.Kind))) } : stdgo._internal.log.slog.Slog_value.Value);
    }
