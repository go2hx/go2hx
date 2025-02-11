package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Transport_asInterface) class Transport_static_extension {
    @:keep
    @:tdfield
    static public function cancelRequest( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        @:check2r _t._cancelRequest((new stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey(_req) : stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey), stdgo._internal.net.http.Http__errrequestcanceled._errRequestCanceled);
    }
    @:keep
    @:tdfield
    static public function closeIdleConnections( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        @:check2 (@:checkr _t ?? throw "null pointer dereference")._nextProtoOnce.do_(@:check2r _t._onceSetNextProtoDefaults);
        @:check2 (@:checkr _t ?? throw "null pointer dereference")._idleMu.lock();
        var _m = (@:checkr _t ?? throw "null pointer dereference")._idleConn;
        (@:checkr _t ?? throw "null pointer dereference")._idleConn = (({
            final x:stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>> = null;
            cast x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>>));
        (@:checkr _t ?? throw "null pointer dereference")._closeIdle = true;
        (@:checkr _t ?? throw "null pointer dereference")._idleLRU = (new stdgo._internal.net.http.Http_t_connlru.T_connLRU() : stdgo._internal.net.http.Http_t_connlru.T_connLRU);
        @:check2 (@:checkr _t ?? throw "null pointer dereference")._idleMu.unlock();
        for (__3819 => _conns in _m) {
            for (__3820 => _pconn in _conns) {
                @:check2r _pconn._close(stdgo._internal.net.http.Http__errcloseidleconns._errCloseIdleConns);
            };
        };
        {
            var _t2 = ((@:checkr _t ?? throw "null pointer dereference")._h2transport : stdgo._internal.net.http.Http_t_h2transport.T_h2Transport);
            if (_t2 != null) {
                _t2.closeIdleConnections();
            };
        };
    }
    @:keep
    @:tdfield
    static public function registerProtocol( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _scheme:stdgo.GoString, _rt:stdgo._internal.net.http.Http_roundtripper.RoundTripper):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            @:check2 (@:checkr _t ?? throw "null pointer dereference")._altMu.lock();
            {
                final __f__ = @:check2 (@:checkr _t ?? throw "null pointer dereference")._altMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((@:check2 (@:checkr _t ?? throw "null pointer dereference")._altProto.load() : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_roundtripper.RoundTripper>)) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_roundtripper.RoundTripper>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_roundtripper.RoundTripper>), _1 : false };
            }, _oldMap = __tmp__._0, __3799 = __tmp__._1;
            {
                var __tmp__ = (_oldMap != null && _oldMap.__exists__(_scheme?.__copy__()) ? { _0 : _oldMap[_scheme?.__copy__()], _1 : true } : { _0 : (null : stdgo._internal.net.http.Http_roundtripper.RoundTripper), _1 : false }), __3800:stdgo._internal.net.http.Http_roundtripper.RoundTripper = __tmp__._0, _exists:Bool = __tmp__._1;
                if (_exists) {
                    throw stdgo.Go.toInterface(((("protocol " : stdgo.GoString) + _scheme?.__copy__() : stdgo.GoString) + (" already registered" : stdgo.GoString)?.__copy__() : stdgo.GoString));
                };
            };
            var _newMap = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo._internal.net.http.Http_roundtripper.RoundTripper>();
                x.__defaultValue__ = () -> (null : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_roundtripper.RoundTripper>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_roundtripper.RoundTripper>);
            for (_k => _v in _oldMap) {
                _newMap[_k] = _v;
            };
            _newMap[_scheme] = _rt;
            @:check2 (@:checkr _t ?? throw "null pointer dereference")._altProto.store(stdgo.Go.toInterface(_newMap));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function clone( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        @:check2 (@:checkr _t ?? throw "null pointer dereference")._nextProtoOnce.do_(@:check2r _t._onceSetNextProtoDefaults);
        var _t2 = (stdgo.Go.setRef(({ proxy : (@:checkr _t ?? throw "null pointer dereference").proxy, onProxyConnectResponse : (@:checkr _t ?? throw "null pointer dereference").onProxyConnectResponse, dialContext : (@:checkr _t ?? throw "null pointer dereference").dialContext, dial : (@:checkr _t ?? throw "null pointer dereference").dial, dialTLS : (@:checkr _t ?? throw "null pointer dereference").dialTLS, dialTLSContext : (@:checkr _t ?? throw "null pointer dereference").dialTLSContext, tLSHandshakeTimeout : (@:checkr _t ?? throw "null pointer dereference").tLSHandshakeTimeout, disableKeepAlives : (@:checkr _t ?? throw "null pointer dereference").disableKeepAlives, disableCompression : (@:checkr _t ?? throw "null pointer dereference").disableCompression, maxIdleConns : (@:checkr _t ?? throw "null pointer dereference").maxIdleConns, maxIdleConnsPerHost : (@:checkr _t ?? throw "null pointer dereference").maxIdleConnsPerHost, maxConnsPerHost : (@:checkr _t ?? throw "null pointer dereference").maxConnsPerHost, idleConnTimeout : (@:checkr _t ?? throw "null pointer dereference").idleConnTimeout, responseHeaderTimeout : (@:checkr _t ?? throw "null pointer dereference").responseHeaderTimeout, expectContinueTimeout : (@:checkr _t ?? throw "null pointer dereference").expectContinueTimeout, proxyConnectHeader : (@:checkr _t ?? throw "null pointer dereference").proxyConnectHeader.clone(), getProxyConnectHeader : (@:checkr _t ?? throw "null pointer dereference").getProxyConnectHeader, maxResponseHeaderBytes : (@:checkr _t ?? throw "null pointer dereference").maxResponseHeaderBytes, forceAttemptHTTP2 : (@:checkr _t ?? throw "null pointer dereference").forceAttemptHTTP2, writeBufferSize : (@:checkr _t ?? throw "null pointer dereference").writeBufferSize, readBufferSize : (@:checkr _t ?? throw "null pointer dereference").readBufferSize } : stdgo._internal.net.http.Http_transport.Transport)) : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
        if (((@:checkr _t ?? throw "null pointer dereference").tLSClientConfig != null && (((@:checkr _t ?? throw "null pointer dereference").tLSClientConfig : Dynamic).__nil__ == null || !((@:checkr _t ?? throw "null pointer dereference").tLSClientConfig : Dynamic).__nil__))) {
            (@:checkr _t2 ?? throw "null pointer dereference").tLSClientConfig = @:check2r (@:checkr _t ?? throw "null pointer dereference").tLSClientConfig.clone();
        };
        if (!(@:checkr _t ?? throw "null pointer dereference")._tlsNextProtoWasNil) {
            var _npm = ({
                final x = new stdgo.GoMap.GoStringMap<(stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>();
                x.__defaultValue__ = () -> null;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>);
            for (_k => _v in (@:checkr _t ?? throw "null pointer dereference").tLSNextProto) {
                _npm[_k] = _v;
            };
            (@:checkr _t2 ?? throw "null pointer dereference").tLSNextProto = _npm;
        };
        return _t2;
    }
    @:keep
    @:tdfield
    static public function roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        if (((((((@:checkr _t ?? throw "null pointer dereference").dial != null || (@:checkr _t ?? throw "null pointer dereference").dialContext != null : Bool) || (@:checkr _t ?? throw "null pointer dereference").dialTLS != null : Bool) || (@:checkr _t ?? throw "null pointer dereference").dialTLSContext != null : Bool) || stdgo._internal.net.http.Http__jsfetchmissing._jsFetchMissing : Bool) || stdgo._internal.net.http.Http__jsfetchdisabled._jsFetchDisabled : Bool)) {
            return @:check2r _t._roundTrip(_req);
        };
        var _ac = (stdgo._internal.net.http.Http__js._js.global().get(("AbortController" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        if (!_ac.isUndefined()) {
            _ac = _ac.new_()?.__copy__();
        };
        var _opt = (stdgo._internal.net.http.Http__js._js.global().get(("Object" : stdgo.GoString)).new_()?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        _opt.set(("method" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _req ?? throw "null pointer dereference").method));
        _opt.set(("credentials" : stdgo.GoString), stdgo.Go.toInterface(("same-origin" : stdgo.GoString)));
        {
            var _h = ((@:checkr _req ?? throw "null pointer dereference").header.get(("js.fetch:credentials" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_h != ((stdgo.Go.str() : stdgo.GoString))) {
                _opt.set(("credentials" : stdgo.GoString), stdgo.Go.toInterface(_h));
                (@:checkr _req ?? throw "null pointer dereference").header.del(("js.fetch:credentials" : stdgo.GoString));
            };
        };
        {
            var _h = ((@:checkr _req ?? throw "null pointer dereference").header.get(("js.fetch:mode" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_h != ((stdgo.Go.str() : stdgo.GoString))) {
                _opt.set(("mode" : stdgo.GoString), stdgo.Go.toInterface(_h));
                (@:checkr _req ?? throw "null pointer dereference").header.del(("js.fetch:mode" : stdgo.GoString));
            };
        };
        {
            var _h = ((@:checkr _req ?? throw "null pointer dereference").header.get(("js.fetch:redirect" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_h != ((stdgo.Go.str() : stdgo.GoString))) {
                _opt.set(("redirect" : stdgo.GoString), stdgo.Go.toInterface(_h));
                (@:checkr _req ?? throw "null pointer dereference").header.del(("js.fetch:redirect" : stdgo.GoString));
            };
        };
        if (!_ac.isUndefined()) {
            _opt.set(("signal" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_ac.get(("signal" : stdgo.GoString)))));
        };
        var _headers = (stdgo._internal.net.http.Http__js._js.global().get(("Headers" : stdgo.GoString)).new_()?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        for (_key => _values in (@:checkr _req ?? throw "null pointer dereference").header) {
            for (__3841 => _value in _values) {
                _headers.call(("append" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_value));
            };
        };
        _opt.set(("headers" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_headers)));
        if ((@:checkr _req ?? throw "null pointer dereference").body != null) {
            var __tmp__ = stdgo._internal.net.http.Http__io._io.readAll((@:checkr _req ?? throw "null pointer dereference").body), _body:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                (@:checkr _req ?? throw "null pointer dereference").body.close();
                return { _0 : null, _1 : _err };
            };
            (@:checkr _req ?? throw "null pointer dereference").body.close();
            if ((_body.length) != ((0 : stdgo.GoInt))) {
                var _buf = (stdgo._internal.net.http.Http__uint8array._uint8Array.new_(stdgo.Go.toInterface((_body.length)))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
                stdgo._internal.net.http.Http__js._js.copyBytesToJS(_buf?.__copy__(), _body);
                _opt.set(("body" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_buf)));
            };
        };
        var _fetchPromise = (stdgo._internal.net.http.Http__js._js.global().call(("fetch" : stdgo.GoString), stdgo.Go.toInterface((@:check2r (@:checkr _req ?? throw "null pointer dereference").uRL.string() : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_opt)))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        var __0 = (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_response.Response>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_response.Response>>), __1 = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>), __2:stdgo._internal.syscall.js.Js_func.Func = ({} : stdgo._internal.syscall.js.Js_func.Func), __3:stdgo._internal.syscall.js.Js_func.Func = ({} : stdgo._internal.syscall.js.Js_func.Func);
var _failure = __3, _success = __2, _errCh = __1, _respCh = __0;
        _success = stdgo._internal.net.http.Http__js._js.funcOf(function(_this:stdgo._internal.syscall.js.Js_value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_value.Value>):stdgo.AnyInterface {
            _success.release();
            _failure.release();
            var _result = (_args[(0 : stdgo.GoInt)] : stdgo._internal.syscall.js.Js_value.Value);
            var _header = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
            var _headersIt = (_result.get(("headers" : stdgo.GoString)).call(("entries" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
            while (true) {
                var _n = (_headersIt.call(("next" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
                if (_n.get(("done" : stdgo.GoString)).bool_()) {
                    break;
                };
                var _pair = (_n.get(("value" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
                var __0 = ((_pair.index((0 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_pair.index((1 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _value = __1, _key = __0;
                var _ck = (stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_key?.__copy__())?.__copy__() : stdgo.GoString);
                _header[_ck] = ((_header[_ck] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()));
            };
            var _contentLength = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            var _clHeader = (_header.get(("Content-Length" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_clHeader != ((stdgo.Go.str() : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.net.http.Http__strconv._strconv.parseInt(_clHeader?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _cl:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _errCh.__send__(stdgo._internal.net.http.Http__fmt._fmt.errorf(("net/http: ill-formed Content-Length header: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)));
                    return (null : stdgo.AnyInterface);
                };
                if ((_cl < (0i64 : stdgo.GoInt64) : Bool)) {
                    _errCh.__send__(stdgo._internal.net.http.Http__fmt._fmt.errorf(("net/http: invalid Content-Length header: %q" : stdgo.GoString), stdgo.Go.toInterface(_clHeader)));
                    return (null : stdgo.AnyInterface);
                };
                _contentLength = _cl;
            } else {
                _contentLength = (-1i64 : stdgo.GoInt64);
            };
            var _b = (_result.get(("body" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
            var _body:stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            if ((!_b.isUndefined() && !_b.isNull() : Bool)) {
                _body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _stream : _b.call(("getReader" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.Http_t_streamreader.T_streamReader)) : stdgo.Ref<stdgo._internal.net.http.Http_t_streamreader.T_streamReader>));
            } else {
                _body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _arrayPromise : _result.call(("arrayBuffer" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader)) : stdgo.Ref<stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader>));
            };
            var _code = (_result.get(("status" : stdgo.GoString)).int_() : stdgo.GoInt);
            _respCh.__send__((stdgo.Go.setRef(({ status : stdgo._internal.net.http.Http__fmt._fmt.sprintf(("%d %s" : stdgo.GoString), stdgo.Go.toInterface(_code), stdgo.Go.toInterface(stdgo._internal.net.http.Http_statustext.statusText(_code)))?.__copy__(), statusCode : _code, header : _header, contentLength : _contentLength, body : _body, request : _req } : stdgo._internal.net.http.Http_response.Response)) : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>));
            return (null : stdgo.AnyInterface);
        })?.__copy__();
        _failure = stdgo._internal.net.http.Http__js._js.funcOf(function(_this:stdgo._internal.syscall.js.Js_value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_value.Value>):stdgo.AnyInterface {
            _success.release();
            _failure.release();
            var _err = (_args[(0 : stdgo.GoInt)] : stdgo._internal.syscall.js.Js_value.Value);
            var _errMsg = ((_err.call(("toString" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _cause = (_err.get(("cause" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
                if (!_cause.isUndefined()) {
                    if (!_cause.get(("toString" : stdgo.GoString)).isUndefined()) {
                        _errMsg = (_errMsg + (((": " : stdgo.GoString) + (_cause.call(("toString" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    } else if (_cause.type() == ((4 : stdgo._internal.syscall.js.Js_type_.Type_))) {
                        _errMsg = (_errMsg + (((": " : stdgo.GoString) + (_cause.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                };
            };
            _errCh.__send__(stdgo._internal.net.http.Http__fmt._fmt.errorf(("net/http: fetch() failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_errMsg)));
            return (null : stdgo.AnyInterface);
        })?.__copy__();
        _fetchPromise.call(("then" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_success)), stdgo.Go.toInterface(stdgo.Go.asInterface(_failure)));
        {
            {
                var __select__ = true;
                while (__select__) {
                    if (@:check2r _req.context().done() != null && @:check2r _req.context().done().__isGet__()) {
                        __select__ = false;
                        {
                            @:check2r _req.context().done().__get__();
                            {
                                if (!_ac.isUndefined()) {
                                    _ac.call(("abort" : stdgo.GoString));
                                };
                                return { _0 : null, _1 : @:check2r _req.context().err() };
                            };
                        };
                    } else if (_respCh != null && _respCh.__isGet__()) {
                        __select__ = false;
                        {
                            var _resp = _respCh.__get__();
                            {
                                return { _0 : _resp, _1 : (null : stdgo.Error) };
                            };
                        };
                    } else if (_errCh != null && _errCh.__isGet__()) {
                        __select__ = false;
                        {
                            var _err = _errCh.__get__();
                            {
                                return { _0 : null, _1 : _err };
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _1 : (null : stdgo.Error) };
        };
    }
}
