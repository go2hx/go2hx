package stdgo._internal.net.http;
function _http2parseUnknownFrame(__143:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame(_fh?.__copy__(), _p) : stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2UnknownFrame.T_http2UnknownFrame>)), _1 : (null : stdgo.Error) };
    }
