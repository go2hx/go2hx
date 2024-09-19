package stdgo._internal.net.http;
function _http2parseWindowUpdateFrame(__143:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        if ((_p.length) != ((4 : stdgo.GoInt))) {
            _countError(("frame_windowupdate_bad_len" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((6u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
        };
        var _inc = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_p.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (_inc == ((0u32 : stdgo.GoUInt32))) {
            if (_fh.streamID == ((0u32 : stdgo.GoUInt32))) {
                _countError(("frame_windowupdate_zero_inc_conn" : stdgo.GoString));
                return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
            };
            _countError(("frame_windowupdate_zero_inc_stream" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_fh.streamID, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))) };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__(), increment : _inc } : stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>)), _1 : (null : stdgo.Error) };
    }
