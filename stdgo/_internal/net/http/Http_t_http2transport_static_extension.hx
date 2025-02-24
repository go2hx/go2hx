package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Transport_asInterface) class T_http2Transport_static_extension {
    @:keep
    @:tdfield
    static public function newClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _c:stdgo._internal.net.Net_conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        return @:check2r _t._newClientConn(_c, @:check2r _t._disableKeepAlives());
    }
    @:keep
    @:tdfield
    static public function closeIdleConnections( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _t._connPool()) : stdgo._internal.net.http.Http_t_http2clientconnpoolidlecloser.T_http2clientConnPoolIdleCloser)) : stdgo._internal.net.http.Http_t_http2clientconnpoolidlecloser.T_http2clientConnPoolIdleCloser), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_t_http2clientconnpoolidlecloser.T_http2clientConnPoolIdleCloser), _1 : false };
            }, _cp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _cp._closeIdleConnections();
            };
        };
    }
    @:keep
    @:tdfield
    static public function roundTripOpt( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _opt:stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        if (!((((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme == ("https" : stdgo.GoString)) || ((((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme == ("http" : stdgo.GoString)) && (@:checkr _t ?? throw "null pointer dereference").allowHTTP : Bool)) : Bool))) {
            return { _0 : null, _1 : stdgo._internal.net.http.Http__errors._errors.new_(("http2: unsupported scheme" : stdgo.GoString)) };
        };
        var _addr = (stdgo._internal.net.http.Http__http2authorityaddr._http2authorityAddr((@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").scheme?.__copy__(), (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var _retry = (0 : stdgo.GoInt);
            while (true) {
                var __tmp__ = @:check2r _t._connPool().getClientConn(_req, _addr.__copy__()), _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    @:check2r _t._vlogf(("http2: Transport failed to get client conn for %s: %v" : stdgo.GoString), stdgo.Go.toInterface(_addr), stdgo.Go.toInterface(_err));
                    return { _0 : null, _1 : _err };
                };
var _reused = (!stdgo._internal.net.http.Http__atomic._atomic.compareAndSwapUint32(stdgo.Go.pointer((@:checkr _cc ?? throw "null pointer dereference")._reused), (0u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32)) : Bool);
stdgo._internal.net.http.Http__http2tracegotconn._http2traceGotConn(_req, _cc, _reused);
var __tmp__ = @:check2r _cc.roundTrip(_req), _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (((_err != null) && (_retry <= (6 : stdgo.GoInt) : Bool) : Bool)) {
                    var _roundTripErr = (_err : stdgo.Error);
                    {
                        {
                            var __tmp__ = stdgo._internal.net.http.Http__http2shouldretryrequest._http2shouldRetryRequest(_req, _err);
                            _req = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err == null) {
                            if (_retry == ((0 : stdgo.GoInt))) {
                                @:check2r _t._vlogf(("RoundTrip retrying after failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_roundTripErr));
                                {
                                    _retry++;
                                    continue;
                                };
                            };
                            var _backoff = (((1u32 : stdgo.GoUInt) << (((_retry : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoFloat64);
                            _backoff = (_backoff + ((_backoff * (((0.1 : stdgo.GoFloat64) * stdgo._internal.net.http.Http__mathrand._mathrand.float64() : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            var _d = ((1000000000i64 : stdgo._internal.time.Time_duration.Duration) * (_backoff : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
                            var _timer = stdgo._internal.net.http.Http__http2backoffnewtimer._http2backoffNewTimer(_d);
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if ((@:checkr _timer ?? throw "null pointer dereference").c != null && (@:checkr _timer ?? throw "null pointer dereference").c.__isGet__()) {
                                        __select__ = false;
                                        {
                                            (@:checkr _timer ?? throw "null pointer dereference").c.__get__();
                                            {
                                                @:check2r _t._vlogf(("RoundTrip retrying after failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_roundTripErr));
                                                continue;
                                            };
                                        };
                                    } else if (@:check2r _req.context().done() != null && @:check2r _req.context().done().__isGet__()) {
                                        __select__ = false;
                                        {
                                            @:check2r _req.context().done().__get__();
                                            {
                                                @:check2r _timer.stop();
                                                _err = @:check2r _req.context().err();
                                            };
                                        };
                                    };
                                    #if !js Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                            };
                        };
                    };
                };
if (_err != null) {
                    @:check2r _t._vlogf(("RoundTrip failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                    return { _0 : null, _1 : _err };
                };
return { _0 : _res, _1 : (null : stdgo.Error) };
                _retry++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        return @:check2r _t.roundTripOpt(_req, (new stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt() : stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt));
    }
}
