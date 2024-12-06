package stdgo._internal.net.http;
function _http2shouldRetryRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, _err:stdgo.Error):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>; var _1 : stdgo.Error; } {
        if (!stdgo._internal.net.http.Http__http2canRetryError._http2canRetryError(_err)) {
            return { _0 : null, _1 : _err };
        };
        if (((_req.body == null) || (stdgo.Go.toInterface(_req.body) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_noBody.noBody))) : Bool)) {
            return { _0 : _req, _1 : (null : stdgo.Error) };
        };
        if (_req.getBody != null) {
            var __tmp__ = _req.getBody(), _body:stdgo._internal.io.Io_ReadCloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
            var _newReq = ((_req : stdgo._internal.net.http.Http_Request.Request)?.__copy__() : stdgo._internal.net.http.Http_Request.Request);
            var _newReq__pointer__ = (stdgo.Go.setRef(_newReq) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
            _newReq.body = _body;
            return { _0 : _newReq__pointer__, _1 : (null : stdgo.Error) };
        };
        if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.net.http.Http__http2errClientConnUnusable._http2errClientConnUnusable))) {
            return { _0 : _req, _1 : (null : stdgo.Error) };
        };
        return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("http2: Transport: cannot retry err [%v] after Request.Body was written; define Request.GetBody to avoid this error" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
    }
