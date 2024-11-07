package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Client_asInterface) class Client_static_extension {
    @:keep
    static public function closeIdleConnections( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        {};
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c._transport()) : stdgo._internal.net.http.Http_T_closeIdleConnections___localname___closeIdler_31464.T_closeIdleConnections___localname___closeIdler_31464)) : stdgo._internal.net.http.Http_T_closeIdleConnections___localname___closeIdler_31464.T_closeIdleConnections___localname___closeIdler_31464), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_T_closeIdleConnections___localname___closeIdler_31464.T_closeIdleConnections___localname___closeIdler_31464), _1 : false };
            }, _tr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _tr.closeIdleConnections();
            };
        };
    }
    @:keep
    static public function head( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newRequest.newRequest(("HEAD" : stdgo.GoString), _url?.__copy__(), (null : stdgo._internal.io.Io_Reader.Reader)), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _c.do_(_req);
    }
    @:keep
    static public function postForm( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _url:stdgo.GoString, _data:stdgo._internal.net.url.Url_Values.Values):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        return _c.post(_url?.__copy__(), ("application/x-www-form-urlencoded" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_data.encode()?.__copy__())));
    }
    @:keep
    static public function post( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newRequest.newRequest(("POST" : stdgo.GoString), _url?.__copy__(), _body), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        _req.header.set(("Content-Type" : stdgo.GoString), _contentType?.__copy__());
        return _c.do_(_req);
    }
    @:keep
    static public function _makeHeadersCopier( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _ireq:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var __0 = stdgo._internal.net.http.Http__cloneOrMakeHeader._cloneOrMakeHeader(_ireq.header), __1:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>>);
var _icookies = __1, _ireqhdr = __0;
        if (((_c.jar != null) && (_ireq.header.get(("Cookie" : stdgo.GoString)) != stdgo.Go.str()) : Bool)) {
            _icookies = ({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>>);
            for (__29772 => _c in _ireq.cookies()) {
                _icookies[_c.name] = ((_icookies[_c.name] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>)).__append__(_c));
            };
        };
        var _preq = _ireq;
        return function(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
            if (((_c.jar != null) && (_icookies != null) : Bool)) {
                var _changed:Bool = false;
                var _resp = _req.response;
                for (__29772 => _c in _resp.cookies()) {
                    {
                        var __tmp__ = (_icookies != null && _icookies.exists(_c.name?.__copy__()) ? { _0 : _icookies[_c.name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>), _1 : false }), __29773:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            if (_icookies != null) _icookies.remove(_c.name);
                            _changed = true;
                        };
                    };
                };
                if (_changed) {
                    _ireqhdr.del(("Cookie" : stdgo.GoString));
                    var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                    for (__29773 => _cs in _icookies) {
                        for (__29774 => _c in _cs) {
                            _ss = (_ss.__append__(((_c.name + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _c.value?.__copy__() : stdgo.GoString)?.__copy__()));
                        };
                    };
                    stdgo._internal.sort.Sort_strings.strings(_ss);
                    _ireqhdr.set(("Cookie" : stdgo.GoString), stdgo._internal.strings.Strings_join.join(_ss, ("; " : stdgo.GoString))?.__copy__());
                };
            };
            for (_k => _vv in _ireqhdr) {
                if (stdgo._internal.net.http.Http__shouldCopyHeaderOnRedirect._shouldCopyHeaderOnRedirect(_k?.__copy__(), _preq.url, _req.url)) {
                    _req.header[_k] = _vv;
                };
            };
            _preq = _req;
        };
    }
    @:keep
    static public function _do( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var __deferstack__:Array<Void -> Void> = [];
        var _retres = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _reterr = (null : stdgo.Error);
        try {
            if (stdgo._internal.net.http.Http__testHookClientDoResult._testHookClientDoResult != null) {
                __deferstack__.unshift(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            stdgo._internal.net.http.Http__testHookClientDoResult._testHookClientDoResult(_retres, _reterr);
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
            };
            if ((_req.url == null || (_req.url : Dynamic).__nil__)) {
                _req._closeBody();
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : stdgo._internal.net.http.Http__urlErrorOp._urlErrorOp(_req.method?.__copy__())?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.URL" : stdgo.GoString)) } : stdgo._internal.net.url.Url_Error.Error)) : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>)) };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            var __0 = _c._deadline()?.__copy__(), __1:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>), __2:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), __3 = _c._makeHeadersCopier(_req), __4 = false, __5:stdgo.GoString = ("" : stdgo.GoString), __6:Bool = false;
var _includeBody = __6, _redirectMethod = __5, _reqBodyClosed = __4, _copyHeaders = __3, _resp = __2, _reqs = __1, _deadline = __0;
            var _uerr = (function(_err:stdgo.Error):stdgo.Error {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (!_reqBodyClosed) {
                        _req._closeBody();
                    };
                    var _urlStr:stdgo.GoString = ("" : stdgo.GoString);
                    if (((_resp != null && ((_resp : Dynamic).__nil__ == null || !(_resp : Dynamic).__nil__)) && (_resp.request != null && ((_resp.request : Dynamic).__nil__ == null || !(_resp.request : Dynamic).__nil__)) : Bool)) {
                        _urlStr = stdgo._internal.net.http.Http__stripPassword._stripPassword(_resp.request.url)?.__copy__();
                    } else {
                        _urlStr = stdgo._internal.net.http.Http__stripPassword._stripPassword(_req.url)?.__copy__();
                    };
                    {
                        final __ret__:stdgo.Error = stdgo.Go.asInterface((stdgo.Go.setRef(({ op : stdgo._internal.net.http.Http__urlErrorOp._urlErrorOp(_reqs[(0 : stdgo.GoInt)].method?.__copy__())?.__copy__(), url : _urlStr?.__copy__(), err : _err } : stdgo._internal.net.url.Url_Error.Error)) : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>));
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                    {
                        final __ret__:stdgo.Error = (null : stdgo.Error);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return __ret__;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return __ret__;
                };
            } : stdgo.Error -> stdgo.Error);
            while (true) {
                if (((_reqs.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _loc = (_resp.header.get(("Location" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    if (_loc == (stdgo.Go.str())) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    var __tmp__ = _req.url.parse(_loc?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _resp._closeBody();
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _uerr(stdgo._internal.fmt.Fmt_errorf.errorf(("failed to parse Location header %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_loc), stdgo.Go.toInterface(_err))) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    var _host = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
                    if (((_req.host != stdgo.Go.str()) && (_req.host != _req.url.host) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_loc?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, __29772:stdgo.Error = __tmp__._1;
                            if (((_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) && !_u.isAbs() : Bool)) {
                                _host = _req.host?.__copy__();
                            };
                        };
                    };
                    var _ireq = _reqs[(0 : stdgo.GoInt)];
                    _req = (stdgo.Go.setRef(({ method : _redirectMethod?.__copy__(), response : _resp, url : _u, header : (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), host : _host?.__copy__(), cancel : _ireq.cancel, _ctx : _ireq._ctx } : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
                    if ((_includeBody && (_ireq.getBody != null) : Bool)) {
                        {
                            var __tmp__ = _ireq.getBody();
                            _req.body = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            _resp._closeBody();
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _uerr(_err) };
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return __ret__;
                            };
                        };
                        _req.contentLength = _ireq.contentLength;
                    };
                    _copyHeaders(_req);
                    {
                        var _ref = (stdgo._internal.net.http.Http__refererForURL._refererForURL(_reqs[((_reqs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].url, _req.url, _req.header.get(("Referer" : stdgo.GoString))?.__copy__())?.__copy__() : stdgo.GoString);
                        if (_ref != (stdgo.Go.str())) {
                            _req.header.set(("Referer" : stdgo.GoString), _ref?.__copy__());
                        };
                    };
                    _err = _c._checkRedirect(_req, _reqs);
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http_errUseLastResponse.errUseLastResponse))) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (null : stdgo.Error) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                    {};
                    if (((_resp.contentLength == (-1i64 : stdgo.GoInt64)) || (_resp.contentLength <= (2048i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        stdgo._internal.io.Io_copyN.copyN(stdgo._internal.io.Io_discard.discard, _resp.body, (2048i64 : stdgo.GoInt64));
                    };
                    _resp.body.close();
                    if (_err != null) {
                        var _ue = (_uerr(_err) : stdgo.Error);
                        (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ue) : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>)) : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>).url = _loc?.__copy__();
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _ue };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                _reqs = (_reqs.__append__(_req));
                var _err:stdgo.Error = (null : stdgo.Error);
                var _didTimeout:() -> Bool = null;
                {
                    {
                        var __tmp__ = _c._send(_req, _deadline?.__copy__());
                        _resp = __tmp__._0;
                        _didTimeout = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        _reqBodyClosed = true;
                        if ((!_deadline.isZero() && _didTimeout() : Bool)) {
                            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : (_err.error() + (" (Client.Timeout exceeded while awaiting headers)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _timeout : true } : stdgo._internal.net.http.Http_T_httpError.T_httpError)) : stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError>));
                        };
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _uerr(_err) };
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return __ret__;
                        };
                    };
                };
                var _shouldRedirect:Bool = false;
                {
                    var __tmp__ = stdgo._internal.net.http.Http__redirectBehavior._redirectBehavior(_req.method?.__copy__(), _resp, _reqs[(0 : stdgo.GoInt)]);
                    _redirectMethod = __tmp__._0?.__copy__();
                    _shouldRedirect = __tmp__._1;
                    _includeBody = __tmp__._2;
                };
                if (!_shouldRedirect) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (null : stdgo.Error) };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
                _req._closeBody();
            };
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _retres, _1 : _reterr };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _retres, _1 : _reterr };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function do_( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        return _c._do(_req);
    }
    @:keep
    static public function _checkRedirect( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _via:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _fn = _c.checkRedirect;
        if (_fn == null) {
            _fn = stdgo._internal.net.http.Http__defaultCheckRedirect._defaultCheckRedirect;
        };
        return _fn(_req, _via);
    }
    @:keep
    static public function get( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newRequest.newRequest(("GET" : stdgo.GoString), _url?.__copy__(), (null : stdgo._internal.io.Io_Reader.Reader)), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        return _c.do_(_req);
    }
    @:keep
    static public function _transport( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>):stdgo._internal.net.http.Http_RoundTripper.RoundTripper {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        if (_c.transport != null) {
            return _c.transport;
        };
        return stdgo._internal.net.http.Http_defaultTransport.defaultTransport;
    }
    @:keep
    static public function _deadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>):stdgo._internal.time.Time_Time.Time {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        if ((_c.timeout > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return stdgo._internal.time.Time_now.now().add(_c.timeout)?.__copy__();
        };
        return (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
    }
    @:keep
    static public function _send( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _deadline:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _didTimeout = null, _err = (null : stdgo.Error);
        if (_c.jar != null) {
            for (__29772 => _cookie in _c.jar.cookies(_req.url)) {
                _req.addCookie(_cookie);
            };
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__send._send(_req, _c._transport(), _deadline?.__copy__());
            _resp = __tmp__._0;
            _didTimeout = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            return { _0 : null, _1 : _didTimeout, _2 : _err };
        };
        if (_c.jar != null) {
            {
                var _rc = _resp.cookies();
                if (((_rc.length) > (0 : stdgo.GoInt) : Bool)) {
                    _c.jar.setCookies(_req.url, _rc);
                };
            };
        };
        return { _0 : _resp, _1 : null, _2 : (null : stdgo.Error) };
    }
}
