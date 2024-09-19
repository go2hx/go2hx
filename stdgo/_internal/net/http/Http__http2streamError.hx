package stdgo._internal.net.http;
function _http2streamError(_id:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode):stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError {
        return ({ streamID : _id, code : _code } : stdgo._internal.net.http.Http_T_http2StreamError.T_http2StreamError);
    }
