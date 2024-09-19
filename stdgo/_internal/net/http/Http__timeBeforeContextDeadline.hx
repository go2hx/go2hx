package stdgo._internal.net.http;
function _timeBeforeContextDeadline(_t:stdgo._internal.time.Time_Time.Time, _ctx:stdgo._internal.context.Context_Context.Context):Bool {
        var __tmp__ = _ctx.deadline(), _d:stdgo._internal.time.Time_Time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return true;
        };
        return _t.before(_d?.__copy__());
    }
