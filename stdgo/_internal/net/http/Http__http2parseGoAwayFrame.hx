package stdgo._internal.net.http;
function _http2parseGoAwayFrame(__132:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        if (_fh.streamID != ((0u32 : stdgo.GoUInt32))) {
            _countError(("frame_goaway_has_stream" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
        };
        if (((_p.length) < (8 : stdgo.GoInt) : Bool)) {
            _countError(("frame_goaway_short" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((6u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
        };
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__(), lastStreamID : (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_p.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32), errCode : (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_p.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), _debugData : (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>)), _1 : (null : stdgo.Error) };
    }
