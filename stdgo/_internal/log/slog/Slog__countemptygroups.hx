package stdgo._internal.log.slog;
function _countEmptyGroups(_as:stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        for (__10 => _a in _as) {
            if (_a.value._isEmptyGroup()) {
                _n++;
            };
        };
        return _n;
    }
