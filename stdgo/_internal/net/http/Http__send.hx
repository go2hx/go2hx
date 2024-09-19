package stdgo._internal.net.http;
function _send(_ireq:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _rt:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, _deadline:stdgo._internal.time.Time_Time.Time):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } {
        var _resp = (null : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>), _didTimeout = null, _err = (null : stdgo.Error);
        var _req = _ireq;
        if (_rt == null) {
            _req._closeBody();
            return { _0 : null, _1 : stdgo._internal.net.http.Http__alwaysFalse._alwaysFalse, _2 : stdgo._internal.errors.Errors_new_.new_(("http: no Client.Transport or DefaultTransport" : stdgo.GoString)) };
        };
        if (_req.url == null || (_req.url : Dynamic).__nil__) {
            _req._closeBody();
            return { _0 : null, _1 : stdgo._internal.net.http.Http__alwaysFalse._alwaysFalse, _2 : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.URL" : stdgo.GoString)) };
        };
        if (_req.requestURI != (stdgo.Go.str())) {
            _req._closeBody();
            return { _0 : null, _1 : stdgo._internal.net.http.Http__alwaysFalse._alwaysFalse, _2 : stdgo._internal.errors.Errors_new_.new_(("http: Request.RequestURI can\'t be set in client requests" : stdgo.GoString)) };
        };
        var _forkReq = (function():Void {
            if (_ireq == (_req)) {
                _req = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Request.Request)) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
                {
                    var __tmp__ = (_ireq : stdgo._internal.net.http.Http_Request.Request)?.__copy__();
                    (_req : stdgo._internal.net.http.Http_Request.Request).method = __tmp__.method;
                    (_req : stdgo._internal.net.http.Http_Request.Request).url = __tmp__.url;
                    (_req : stdgo._internal.net.http.Http_Request.Request).proto = __tmp__.proto;
                    (_req : stdgo._internal.net.http.Http_Request.Request).protoMajor = __tmp__.protoMajor;
                    (_req : stdgo._internal.net.http.Http_Request.Request).protoMinor = __tmp__.protoMinor;
                    (_req : stdgo._internal.net.http.Http_Request.Request).header = __tmp__.header;
                    (_req : stdgo._internal.net.http.Http_Request.Request).body = __tmp__.body;
                    (_req : stdgo._internal.net.http.Http_Request.Request).getBody = __tmp__.getBody;
                    (_req : stdgo._internal.net.http.Http_Request.Request).contentLength = __tmp__.contentLength;
                    (_req : stdgo._internal.net.http.Http_Request.Request).transferEncoding = __tmp__.transferEncoding;
                    (_req : stdgo._internal.net.http.Http_Request.Request).close = __tmp__.close;
                    (_req : stdgo._internal.net.http.Http_Request.Request).host = __tmp__.host;
                    (_req : stdgo._internal.net.http.Http_Request.Request).form = __tmp__.form;
                    (_req : stdgo._internal.net.http.Http_Request.Request).postForm = __tmp__.postForm;
                    (_req : stdgo._internal.net.http.Http_Request.Request).multipartForm = __tmp__.multipartForm;
                    (_req : stdgo._internal.net.http.Http_Request.Request).trailer = __tmp__.trailer;
                    (_req : stdgo._internal.net.http.Http_Request.Request).remoteAddr = __tmp__.remoteAddr;
                    (_req : stdgo._internal.net.http.Http_Request.Request).requestURI = __tmp__.requestURI;
                    (_req : stdgo._internal.net.http.Http_Request.Request).tls = __tmp__.tls;
                    (_req : stdgo._internal.net.http.Http_Request.Request).cancel = __tmp__.cancel;
                    (_req : stdgo._internal.net.http.Http_Request.Request).response = __tmp__.response;
                    (_req : stdgo._internal.net.http.Http_Request.Request)._ctx = __tmp__._ctx;
                };
            };
        } : () -> Void);
        if (_req.header == null) {
            _forkReq();
            _req.header = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_Header.Header);
        };
        {
            var _u = _req.url.user;
            if ((((_u != null) && ((_u : Dynamic).__nil__ == null || !(_u : Dynamic).__nil__)) && (_req.header.get(("Authorization" : stdgo.GoString)) == stdgo.Go.str()) : Bool)) {
                var _username = (_u.username()?.__copy__() : stdgo.GoString);
                var __tmp__ = _u.password(), _password:stdgo.GoString = __tmp__._0, __143:Bool = __tmp__._1;
                _forkReq();
                _req.header = stdgo._internal.net.http.Http__cloneOrMakeHeader._cloneOrMakeHeader(_ireq.header);
                _req.header.set(("Authorization" : stdgo.GoString), (("Basic " : stdgo.GoString) + stdgo._internal.net.http.Http__basicAuth._basicAuth(_username?.__copy__(), _password?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__());
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
            if (_resp != null && ((_resp : Dynamic).__nil__ == null || !(_resp : Dynamic).__nil__)) {
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
            return { _0 : null, _1 : _didTimeout, _2 : _err };
        };
        if (_resp == null || (_resp : Dynamic).__nil__) {
            return { _0 : null, _1 : _didTimeout, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: RoundTripper implementation (%T) returned a nil *Response with a nil error" : stdgo.GoString), stdgo.Go.toInterface(_rt)) };
        };
        if (_resp.body == null) {
            if (((_resp.contentLength > (0i64 : stdgo.GoInt64) : Bool) && (_req.method != ("HEAD" : stdgo.GoString)) : Bool)) {
                return { _0 : null, _1 : _didTimeout, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: RoundTripper implementation (%T) returned a *Response with content length %d but a nil Body" : stdgo.GoString), stdgo.Go.toInterface(_rt), stdgo.Go.toInterface(_resp.contentLength)) };
            };
            _resp.body = stdgo._internal.io.Io_nopCloser.nopCloser(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo.Go.str()?.__copy__())));
        };
        if (!_deadline.isZero()) {
            _resp.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _stop : _stopTimer, _rc : _resp.body, _reqDidTimeout : _didTimeout } : stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody)) : stdgo.Ref<stdgo._internal.net.http.Http_T_cancelTimerBody.T_cancelTimerBody>));
        };
        return { _0 : _resp, _1 : null, _2 : (null : stdgo.Error) };
    }
