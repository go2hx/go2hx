package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Client_asInterface) class Client_static_extension {
    @:keep
    @:tdfield
    static public function closeIdleConnections( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        {};
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(@:check2r _c._transport()) : stdgo._internal.net.http.Http_T_closeIdleConnections___localname___closeIdler_31464.T_closeIdleConnections___localname___closeIdler_31464)) : stdgo._internal.net.http.Http_T_closeIdleConnections___localname___closeIdler_31464.T_closeIdleConnections___localname___closeIdler_31464), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.net.http.Http_T_closeIdleConnections___localname___closeIdler_31464.T_closeIdleConnections___localname___closeIdler_31464), _1 : false };
            }, _tr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _tr.closeIdleConnections();
            };
        };
    }
    @:keep
    @:tdfield
    static public function head( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newRequest.newRequest(("HEAD" : stdgo.GoString), _url?.__copy__(), (null : stdgo._internal.io.Io_Reader.Reader)), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _resp = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = @:check2r _c.do_(_req);
            _resp = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function postForm( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _url:stdgo.GoString, _data:stdgo._internal.net.url.Url_Values.Values):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = @:check2r _c.post(_url?.__copy__(), ("application/x-www-form-urlencoded" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_data.encode()?.__copy__())));
            _resp = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function post( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newRequest.newRequest(("POST" : stdgo.GoString), _url?.__copy__(), _body), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _resp = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _req ?? throw "null pointer dereference").header.set(("Content-Type" : stdgo.GoString), _contentType?.__copy__());
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = @:check2r _c.do_(_req);
            _resp = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _makeHeadersCopier( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _ireq:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var __0 = stdgo._internal.net.http.Http__cloneOrMakeHeader._cloneOrMakeHeader((@:checkr _ireq ?? throw "null pointer dereference").header), __1:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>>);
var _icookies = __1, _ireqhdr = __0;
        if ((((@:checkr _c ?? throw "null pointer dereference").jar != null) && ((@:checkr _ireq ?? throw "null pointer dereference").header.get(("Cookie" : stdgo.GoString)) != stdgo.Go.str()) : Bool)) {
            _icookies = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>>);
            for (__29777 => _c in @:check2r _ireq.cookies()) {
                _icookies[(@:checkr _c ?? throw "null pointer dereference").name] = ((_icookies[(@:checkr _c ?? throw "null pointer dereference").name] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>)).__append__(_c));
            };
        };
        var _preq = _ireq;
        return function(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):Void {
            if ((((@:checkr _c ?? throw "null pointer dereference").jar != null) && (_icookies != null) : Bool)) {
                var _changed:Bool = false;
                var _resp = (@:checkr _req ?? throw "null pointer dereference").response;
                for (__29777 => _c in @:check2r _resp.cookies()) {
                    {
                        var __tmp__ = (_icookies != null && _icookies.exists((@:checkr _c ?? throw "null pointer dereference").name?.__copy__()) ? { _0 : _icookies[(@:checkr _c ?? throw "null pointer dereference").name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>), _1 : false }), __29778:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            if (_icookies != null) _icookies.remove((@:checkr _c ?? throw "null pointer dereference").name);
                            _changed = true;
                        };
                    };
                };
                if (_changed) {
                    _ireqhdr.del(("Cookie" : stdgo.GoString));
                    var _ss:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                    for (__29778 => _cs in _icookies) {
                        for (__29779 => _c in _cs) {
                            _ss = (_ss.__append__((((@:checkr _c ?? throw "null pointer dereference").name + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _c ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString)?.__copy__()));
                        };
                    };
                    stdgo._internal.sort.Sort_strings.strings(_ss);
                    _ireqhdr.set(("Cookie" : stdgo.GoString), stdgo._internal.strings.Strings_join.join(_ss, ("; " : stdgo.GoString))?.__copy__());
                };
            };
            for (_k => _vv in _ireqhdr) {
                if (stdgo._internal.net.http.Http__shouldCopyHeaderOnRedirect._shouldCopyHeaderOnRedirect(_k?.__copy__(), (@:checkr _preq ?? throw "null pointer dereference").uRL, (@:checkr _req ?? throw "null pointer dereference").uRL)) {
                    (@:checkr _req ?? throw "null pointer dereference").header[_k] = _vv;
                };
            };
            _preq = _req;
        };
    }
    @:keep
    @:tdfield
    static public function _do( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _retres = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _reterr = (null : stdgo.Error);
        try {
            if (stdgo._internal.net.http.Http__testHookClientDoResult._testHookClientDoResult != null) {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            stdgo._internal.net.http.Http__testHookClientDoResult._testHookClientDoResult(_retres, _reterr);
                        };
                        a();
                    }) });
                };
            };
            if (((@:checkr _req ?? throw "null pointer dereference").uRL == null || ((@:checkr _req ?? throw "null pointer dereference").uRL : Dynamic).__nil__)) {
                @:check2r _req._closeBody();
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                        final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ op : stdgo._internal.net.http.Http__urlErrorOp._urlErrorOp((@:checkr _req ?? throw "null pointer dereference").method?.__copy__())?.__copy__(), err : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.URL" : stdgo.GoString)) } : stdgo._internal.net.url.Url_Error.Error)) : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>)) };
                        _retres = __tmp__._0;
                        _reterr = __tmp__._1;
                        __tmp__;
                    };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var __0 = @:check2r _c._deadline()?.__copy__(), __1:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>), __2:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), __3 = @:check2r _c._makeHeadersCopier(_req), __4 = false, __5:stdgo.GoString = ("" : stdgo.GoString), __6:Bool = false;
var _includeBody = __6, _redirectMethod = __5, _reqBodyClosed = __4, _copyHeaders = __3, _resp = __2, _reqs = __1, _deadline = __0;
            var _uerr = (function(_err:stdgo.Error):stdgo.Error {
                if (!_reqBodyClosed) {
                    @:check2r _req._closeBody();
                };
                var _urlStr:stdgo.GoString = ("" : stdgo.GoString);
                if (((_resp != null && ((_resp : Dynamic).__nil__ == null || !(_resp : Dynamic).__nil__)) && ((@:checkr _resp ?? throw "null pointer dereference").request != null && (((@:checkr _resp ?? throw "null pointer dereference").request : Dynamic).__nil__ == null || !((@:checkr _resp ?? throw "null pointer dereference").request : Dynamic).__nil__)) : Bool)) {
                    _urlStr = stdgo._internal.net.http.Http__stripPassword._stripPassword((@:checkr (@:checkr _resp ?? throw "null pointer dereference").request ?? throw "null pointer dereference").uRL)?.__copy__();
                } else {
                    _urlStr = stdgo._internal.net.http.Http__stripPassword._stripPassword((@:checkr _req ?? throw "null pointer dereference").uRL)?.__copy__();
                };
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : stdgo._internal.net.http.Http__urlErrorOp._urlErrorOp((@:checkr _reqs[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").method?.__copy__())?.__copy__(), uRL : _urlStr?.__copy__(), err : _err } : stdgo._internal.net.url.Url_Error.Error)) : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>));
            } : stdgo.Error -> stdgo.Error);
            while (true) {
                if (((_reqs.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _loc = ((@:checkr _resp ?? throw "null pointer dereference").header.get(("Location" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    if (_loc == (stdgo.Go.str())) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (null : stdgo.Error) };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var __tmp__ = @:check2r (@:checkr _req ?? throw "null pointer dereference").uRL.parse(_loc?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _resp._closeBody();
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _uerr(stdgo._internal.fmt.Fmt_errorf.errorf(("failed to parse Location header %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_loc), stdgo.Go.toInterface(_err))) };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    var _host = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
                    if ((((@:checkr _req ?? throw "null pointer dereference").host != stdgo.Go.str()) && ((@:checkr _req ?? throw "null pointer dereference").host != (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").host) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_loc?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL> = __tmp__._0, __29777:stdgo.Error = __tmp__._1;
                            if (((_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) && !@:check2r _u.isAbs() : Bool)) {
                                _host = (@:checkr _req ?? throw "null pointer dereference").host?.__copy__();
                            };
                        };
                    };
                    var _ireq = _reqs[(0 : stdgo.GoInt)];
                    _req = (stdgo.Go.setRef(({ method : _redirectMethod?.__copy__(), response : _resp, uRL : _u, header : (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header), host : _host?.__copy__(), cancel : (@:checkr _ireq ?? throw "null pointer dereference").cancel, _ctx : (@:checkr _ireq ?? throw "null pointer dereference")._ctx } : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
                    if ((_includeBody && ((@:checkr _ireq ?? throw "null pointer dereference").getBody != null) : Bool)) {
                        {
                            var __tmp__ = (@:checkr _ireq ?? throw "null pointer dereference").getBody();
                            (@:checkr _req ?? throw "null pointer dereference").body = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            @:check2r _resp._closeBody();
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _uerr(_err) };
                                    _retres = __tmp__._0;
                                    _reterr = __tmp__._1;
                                    __tmp__;
                                };
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                        (@:checkr _req ?? throw "null pointer dereference").contentLength = (@:checkr _ireq ?? throw "null pointer dereference").contentLength;
                    };
                    _copyHeaders(_req);
                    {
                        var _ref = (stdgo._internal.net.http.Http__refererForURL._refererForURL((@:checkr _reqs[((_reqs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw "null pointer dereference").uRL, (@:checkr _req ?? throw "null pointer dereference").uRL, (@:checkr _req ?? throw "null pointer dereference").header.get(("Referer" : stdgo.GoString))?.__copy__())?.__copy__() : stdgo.GoString);
                        if (_ref != (stdgo.Go.str())) {
                            (@:checkr _req ?? throw "null pointer dereference").header.set(("Referer" : stdgo.GoString), _ref?.__copy__());
                        };
                    };
                    _err = @:check2r _c._checkRedirect(_req, _reqs);
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http_errUseLastResponse.errUseLastResponse))) {
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (null : stdgo.Error) };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    {};
                    if ((((@:checkr _resp ?? throw "null pointer dereference").contentLength == (-1i64 : stdgo.GoInt64)) || ((@:checkr _resp ?? throw "null pointer dereference").contentLength <= (2048i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        stdgo._internal.io.Io_copyN.copyN(stdgo._internal.io.Io_discard.discard, (@:checkr _resp ?? throw "null pointer dereference").body, (2048i64 : stdgo.GoInt64));
                    };
                    (@:checkr _resp ?? throw "null pointer dereference").body.close();
                    if (_err != null) {
                        var _ue = (_uerr(_err) : stdgo.Error);
                        (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_ue) : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>)) : stdgo.Ref<stdgo._internal.net.url.Url_Error.Error>) ?? throw "null pointer dereference").uRL = _loc?.__copy__();
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : _ue };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
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
                        var __tmp__ = @:check2r _c._send(_req, _deadline?.__copy__());
                        _resp = @:tmpset0 __tmp__._0;
                        _didTimeout = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    if (_err != null) {
                        _reqBodyClosed = true;
                        if ((!_deadline.isZero() && _didTimeout() : Bool)) {
                            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : (_err.error() + (" (Client.Timeout exceeded while awaiting headers)" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _timeout : true } : stdgo._internal.net.http.Http_T_httpError.T_httpError)) : stdgo.Ref<stdgo._internal.net.http.Http_T_httpError.T_httpError>));
                        };
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _uerr(_err) };
                                _retres = __tmp__._0;
                                _reterr = __tmp__._1;
                                __tmp__;
                            };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                var _shouldRedirect:Bool = false;
                {
                    var __tmp__ = stdgo._internal.net.http.Http__redirectBehavior._redirectBehavior((@:checkr _req ?? throw "null pointer dereference").method?.__copy__(), _resp, _reqs[(0 : stdgo.GoInt)]);
                    _redirectMethod = @:tmpset0 __tmp__._0?.__copy__();
                    _shouldRedirect = @:tmpset0 __tmp__._1;
                    _includeBody = @:tmpset0 __tmp__._2;
                };
                if (!_shouldRedirect) {
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = {
                            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : _resp, _1 : (null : stdgo.Error) };
                            _retres = __tmp__._0;
                            _reterr = __tmp__._1;
                            __tmp__;
                        };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                @:check2r _req._closeBody();
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _retres, _1 : _reterr };
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
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return { _0 : _retres, _1 : _reterr };
            };
        };
    }
    @:keep
    @:tdfield
    static public function do_( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        return @:check2r _c._do(_req);
    }
    @:keep
    @:tdfield
    static public function _checkRedirect( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _via:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _fn = (@:checkr _c ?? throw "null pointer dereference").checkRedirect;
        if (_fn == null) {
            _fn = stdgo._internal.net.http.Http__defaultCheckRedirect._defaultCheckRedirect;
        };
        return _fn(_req, _via);
    }
    @:keep
    @:tdfield
    static public function get( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.http.Http_newRequest.newRequest(("GET" : stdgo.GoString), _url?.__copy__(), (null : stdgo._internal.io.Io_Reader.Reader)), _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _resp = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : stdgo.Error; } = @:check2r _c.do_(_req);
            _resp = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _transport( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>):stdgo._internal.net.http.Http_RoundTripper.RoundTripper {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        if ((@:checkr _c ?? throw "null pointer dereference").transport != null) {
            return (@:checkr _c ?? throw "null pointer dereference").transport;
        };
        return stdgo._internal.net.http.Http_defaultTransport.defaultTransport;
    }
    @:keep
    @:tdfield
    static public function _deadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>):stdgo._internal.time.Time_Time.Time {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        if (((@:checkr _c ?? throw "null pointer dereference").timeout > (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            return stdgo._internal.time.Time_now.now().add((@:checkr _c ?? throw "null pointer dereference").timeout)?.__copy__();
        };
        return (new stdgo._internal.time.Time_Time.Time() : stdgo._internal.time.Time_Time.Time);
    }
    @:keep
    @:tdfield
    static public function _send( _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _deadline:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_Client.Client> = _c;
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _didTimeout = null, _err = (null : stdgo.Error);
        if ((@:checkr _c ?? throw "null pointer dereference").jar != null) {
            for (__29777 => _cookie in (@:checkr _c ?? throw "null pointer dereference").jar.cookies((@:checkr _req ?? throw "null pointer dereference").uRL)) {
                @:check2r _req.addCookie(_cookie);
            };
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__send._send(_req, @:check2r _c._transport(), _deadline?.__copy__());
            _resp = @:tmpset0 __tmp__._0;
            _didTimeout = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : _didTimeout, _2 : _err };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if ((@:checkr _c ?? throw "null pointer dereference").jar != null) {
            {
                var _rc = @:check2r _resp.cookies();
                if (((_rc.length) > (0 : stdgo.GoInt) : Bool)) {
                    (@:checkr _c ?? throw "null pointer dereference").jar.setCookies((@:checkr _req ?? throw "null pointer dereference").uRL, _rc);
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : _resp, _1 : null, _2 : (null : stdgo.Error) };
            _resp = __tmp__._0;
            _didTimeout = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
}
