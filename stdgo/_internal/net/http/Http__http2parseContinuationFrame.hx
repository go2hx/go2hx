package stdgo._internal.net.http;
function _http2parseContinuationFrame(__137:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        if (_fh.streamID == ((0u32 : stdgo.GoUInt32))) {
            _countError(("frame_continuation_zero_stream" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2connError.T_http2connError((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), ("CONTINUATION frame with stream ID 0" : stdgo.GoString)) : stdgo._internal.net.http.Http_T_http2connError.T_http2connError)) };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame(_fh?.__copy__(), _p) : stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2ContinuationFrame.T_http2ContinuationFrame>)), _1 : (null : stdgo.Error) };
    }
