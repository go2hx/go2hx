package stdgo._internal.net.http;
function _send(_ireq:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _rt:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, _deadline:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } {
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _didTimeout = null, _err = (null : stdgo.Error);
        var _req = _ireq;
        if (_rt == null) {
            @:check2r _req._closeBody();
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__alwaysFalse._alwaysFalse, _2 : stdgo._internal.errors.Errors_new_.new_(("http: no Client.Transport or DefaultTransport" : stdgo.GoString)) };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (((@:checkr _req ?? throw "null pointer dereference").uRL == null || ((@:checkr _req ?? throw "null pointer dereference").uRL : Dynamic).__nil__)) {
            @:check2r _req._closeBody();
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__alwaysFalse._alwaysFalse, _2 : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.URL" : stdgo.GoString)) };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if ((@:checkr _req ?? throw "null pointer dereference").requestURI != (stdgo.Go.str())) {
            @:check2r _req._closeBody();
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__alwaysFalse._alwaysFalse, _2 : stdgo._internal.errors.Errors_new_.new_(("http: Request.RequestURI can\'t be set in client requests" : stdgo.GoString)) };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _forkReq = (function():Void {
            if (_ireq == (_req)) {
                _req = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
                {
                    var __tmp__ = (_ireq : stdgo._internal.net.http.Http_Request.Request)?.__copy__();
                    var x = (_req : stdgo._internal.net.http.Http_Request.Request);
                    x.method = __tmp__.method;
                    x.uRL = __tmp__.uRL;
                    x.proto = __tmp__.proto;
                    x.protoMajor = __tmp__.protoMajor;
                    x.protoMinor = __tmp__.protoMinor;
                    x.header = __tmp__.header;
                    x.body = __tmp__.body;
                    x.getBody = __tmp__.getBody;
                    x.contentLength = __tmp__.contentLength;
                    x.transferEncoding = __tmp__.transferEncoding;
                    x.close = __tmp__.close;
                    x.host = __tmp__.host;
                    x.form = __tmp__.form;
                    x.postForm = __tmp__.postForm;
                    x.multipartForm = __tmp__.multipartForm;
                    x.trailer = __tmp__.trailer;
                    x.remoteAddr = __tmp__.remoteAddr;
                    x.requestURI = __tmp__.requestURI;
                    x.tLS = __tmp__.tLS;
                    x.cancel = __tmp__.cancel;
                    x.response = __tmp__.response;
                    x._ctx = __tmp__._ctx;
                };
            };
        } : () -> Void);
        if ((@:checkr _req ?? throw "null pointer dereference").header == null) {
            _forkReq();
            (@:checkr _req ?? throw "null pointer dereference").header = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        };
        {
            var _u = (@:checkr (@:checkr _req ?? throw "null pointer dereference").uRL ?? throw "null pointer dereference").user;
            if (((_u != null && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) && ((@:checkr _req ?? throw "null pointer dereference").header.get(("Authorization" : stdgo.GoString)) == stdgo.Go.str()) : Bool)) {
                var _username = (@:check2r _u.username()?.__copy__() : stdgo.GoString);
                var __tmp__ = @:check2r _u.password(), _password:stdgo.GoString = __tmp__._0, __137:Bool = __tmp__._1;
                _forkReq();
                (@:checkr _req ?? throw "null pointer dereference").header = stdgo._internal.net.http.Http__cloneOrMakeHeader._cloneOrMakeHeader((@:checkr _ireq ?? throw "null pointer dereference").header);
                (@:checkr _req ?? throw "null pointer dereference").header.set(("Authorization" : stdgo.GoString), (("Basic " : stdgo.GoString) + stdgo._internal.net.http.Http__basicAuth._basicAuth(_username?.__copy__(), _password?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        if (!_deadline.isZero()) {
            _forkReq();
        };
        var __tmp__ = stdgo._internal.net.http.Http__setRequestCancel._setRequestCancel(_req, _rt, _deadline?.__copy__()), _stopTimer:() -> Void = __tmp__._0, _didTimeout:() -> Bool = __tmp__._1;
        {
            var __tmp__ = _rt.roundTrip(_req);
            _resp = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _stopTimer();
            if ((_resp != null && ((_resp : Dynamic).__nil__ == null || !(_resp : Dynamic).__nil__))) {
                stdgo._internal.log.Log_printf.printf(("RoundTripper returned a response & error; ignoring response" : stdgo.GoString));
            };
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError)) : stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError), _1 : true };
                } catch(_) {
                    { _0 : ({} : stdgo._internal.crypto.tls.Tls_RecordHeaderError.RecordHeaderError), _1 : false };
                }, _tlsErr = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    if (((_tlsErr.recordHeader.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) == (("HTTP/" : stdgo.GoString))) {
                        _err = stdgo._internal.net.http.Http_errSchemeMismatch.errSchemeMismatch;
                    };
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : _didTimeout, _2 : _err };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if ((_resp == null || (_resp : Dynamic).__nil__)) {
            return {
                final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : _didTimeout, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: RoundTripper implementation (%T) returned a nil *Response with a nil error" : stdgo.GoString), stdgo.Go.toInterface(_rt)) };
                _resp = __tmp__._0;
                _didTimeout = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if ((@:checkr _resp ?? throw "null pointer dereference").body == null) {
            if ((((@:checkr _resp ?? throw "null pointer dereference").contentLength > (0i64 : stdgo.GoInt64) : Bool) && ((@:checkr _req ?? throw "null pointer dereference").method != ("HEAD" : stdgo.GoString)) : Bool)) {
                return {
                    final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : null, _1 : _didTimeout, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: RoundTripper implementation (%T) returned a *Response with content length %d but a nil Body" : stdgo.GoString), stdgo.Go.toInterface(_rt), stdgo.Go.toInterface((@:checkr _resp ?? throw "null pointer dereference").contentLength)) };
                    _resp = __tmp__._0;
                    _didTimeout = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            (@:checkr _resp ?? throw "null pointer dereference").body = stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo.Go.str()?.__copy__())));
        };
        if (!_deadline.isZero()) {
            (@:checkr _resp ?? throw "null pointer dereference").body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _stop : _stopTimer, _rc : (@:checkr _resp ?? throw "null pointer dereference").body, _reqDidTimeout : _didTimeout } : stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody)) : stdgo.Ref<stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody>));
        };
        return {
            final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } = { _0 : _resp, _1 : null, _2 : (null : stdgo.Error) };
            _resp = __tmp__._0;
            _didTimeout = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
