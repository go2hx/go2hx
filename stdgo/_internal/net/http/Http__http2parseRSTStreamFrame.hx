package stdgo._internal.net.http;
function _http2parseRSTStreamFrame(__143:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        if ((_p.length) != ((4 : stdgo.GoInt))) {
            _countError(("frame_rststream_bad_len" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((6u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
        };
        if (_fh.streamID == ((0u32 : stdgo.GoUInt32))) {
            _countError(("frame_rststream_zero_stream" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame(_fh?.__copy__(), (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_p.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode)) : stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>)), _1 : (null : stdgo.Error) };
    }
