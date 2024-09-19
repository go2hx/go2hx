package stdgo._internal.net.http;
function _http2traceGotConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _reused:Bool):Void {
        var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(_req.context());
        if ((((_trace == null) || (_trace : Dynamic).__nil__) || (_trace.gotConn == null) : Bool)) {
            return;
        };
        var _ci = ({ conn : _cc._tconn } : stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo);
        _ci.reused = _reused;
        _cc._mu.lock();
        _ci.wasIdle = ((_cc._streams.length == (0 : stdgo.GoInt)) && _reused : Bool);
        if ((_ci.wasIdle && !_cc._lastActive.isZero() : Bool)) {
            _ci.idleTime = stdgo._internal.time.Time_since.since(_cc._lastActive?.__copy__());
        };
        _cc._mu.unlock();
        _trace.gotConn(_ci?.__copy__());
    }
