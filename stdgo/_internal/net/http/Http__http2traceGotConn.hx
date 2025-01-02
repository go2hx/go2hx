package stdgo._internal.net.http;
function _http2traceGotConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _cc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>, _reused:Bool):Void {
        var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextClientTrace.contextClientTrace(@:check2r _req.context());
        if (((_trace == null || (_trace : Dynamic).__nil__) || ((@:checkr _trace ?? throw "null pointer dereference").gotConn == null) : Bool)) {
            return;
        };
        var _ci = ({ conn : (@:checkr _cc ?? throw "null pointer dereference")._tconn } : stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo);
        _ci.reused = _reused;
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.lock();
        _ci.wasIdle = (((@:checkr _cc ?? throw "null pointer dereference")._streams.length == (0 : stdgo.GoInt)) && _reused : Bool);
        if ((_ci.wasIdle && !(@:checkr _cc ?? throw "null pointer dereference")._lastActive.isZero() : Bool)) {
            _ci.idleTime = stdgo._internal.time.Time_since.since((@:checkr _cc ?? throw "null pointer dereference")._lastActive?.__copy__());
        };
        @:check2 (@:checkr _cc ?? throw "null pointer dereference")._mu.unlock();
        (@:checkr _trace ?? throw "null pointer dereference").gotConn(_ci?.__copy__());
    }
