package stdgo._internal.log.slog;
function groupValue(_as:haxe.Rest<stdgo._internal.log.slog.Slog_attr.Attr>):stdgo._internal.log.slog.Slog_value.Value {
        var _as = new stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>(_as.length, 0, ..._as);
        {
            var _n = (stdgo._internal.log.slog.Slog__countemptygroups._countEmptyGroups(_as) : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                var _as2 = (new stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>((0 : stdgo.GoInt).toBasic(), ((_as.length) - _n : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > ((_as.length) - _n : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : ((_as.length) - _n : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.log.slog.Slog_attr.Attr)]) : stdgo.Slice<stdgo._internal.log.slog.Slog_attr.Attr>);
                for (__12 => _a in _as) {
                    if (!_a.value._isEmptyGroup()) {
                        _as2 = (_as2.__append__(_a));
                    };
                };
                _as = _as2;
            };
        };
        return ({ _num : (_as.length : stdgo.GoUInt64), _any : stdgo.Go.toInterface(stdgo.Go.asInterface((({
            final e = stdgo._internal.unsafe.Unsafe_slicedata.sliceData(_as);
            ({ key : e.key, value : e.value } : stdgo._internal.log.slog.Slog_attr.Attr);
        })))) } : stdgo._internal.log.slog.Slog_value.Value);
    }
