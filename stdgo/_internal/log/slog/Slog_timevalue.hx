package stdgo._internal.log.slog;
function timeValue(_v:stdgo._internal.time.Time_time.Time):stdgo._internal.log.slog.Slog_value.Value {
        if (_v.isZero()) {
            return ({ _any : stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo._internal.log.slog.Slog_t_timelocation.T_timeLocation))) } : stdgo._internal.log.slog.Slog_value.Value);
        };
        return ({ _num : (_v.unixNano() : stdgo.GoUInt64), _any : stdgo.Go.toInterface(stdgo.Go.asInterface((({
            final e = _v.location();
            ({ _name : e._name, _zone : e._zone, _tx : e._tx, _extend : e._extend, _cacheStart : e._cacheStart, _cacheEnd : e._cacheEnd, _cacheZone : e._cacheZone } : stdgo._internal.time.Time_location.Location);
        })))) } : stdgo._internal.log.slog.Slog_value.Value);
    }
