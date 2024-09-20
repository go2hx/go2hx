package stdgo._internal.net.http;
function _http2parsePriorityFrame(__132:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _payload:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        if (_fh.streamID == ((0u32 : stdgo.GoUInt32))) {
            _countError(("frame_priority_zero_stream" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2connError.T_http2connError((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), ("PRIORITY frame with stream ID 0" : stdgo.GoString)) : stdgo._internal.net.http.Http_T_http2connError.T_http2connError)) };
        };
        if ((_payload.length) != ((5 : stdgo.GoInt))) {
            _countError(("frame_priority_bad_length" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2connError.T_http2connError((6u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("PRIORITY frame payload size was %d; want 5" : stdgo.GoString), stdgo.Go.toInterface((_payload.length)))?.__copy__()) : stdgo._internal.net.http.Http_T_http2connError.T_http2connError)) };
        };
        var _v = (stdgo._internal.encoding.binary.Binary_bigEndian.bigEndian.uint32((_payload.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _streamID = (_v & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__(), _http2PriorityParam : ({ weight : _payload[(4 : stdgo.GoInt)], streamDep : _streamID, exclusive : _streamID != (_v) } : stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam) } : stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PriorityFrame.T_http2PriorityFrame>)), _1 : (null : stdgo.Error) };
    }
