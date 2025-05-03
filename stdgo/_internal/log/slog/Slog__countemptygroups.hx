package stdgo._internal.log.slog;
function _countEmptyGroups(_as:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L185"
        for (__10 => _a in _as) {
            //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L186"
            if (_a.value._isEmptyGroup()) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L187"
                _n++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/value.go#L190"
        return _n;
    }
