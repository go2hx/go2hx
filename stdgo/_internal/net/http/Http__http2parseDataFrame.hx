package stdgo._internal.net.http;
function _http2parseDataFrame(_fc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _payload:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        if (_fh.streamID == ((0u32 : stdgo.GoUInt32))) {
            _countError(("frame_data_stream_0" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2connError.T_http2connError((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), ("DATA frame with stream ID 0" : stdgo.GoString)) : stdgo._internal.net.http.Http_T_http2connError.T_http2connError)) };
        };
        var _f = _fc._getDataFrame();
        _f._http2FrameHeader = _fh?.__copy__();
        var _padSize:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        if (_fh.flags.has((8 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags))) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.net.http.Http__http2readByte._http2readByte(_payload);
                _payload = __tmp__._0;
                _padSize = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                _countError(("frame_data_pad_byte_short" : stdgo.GoString));
                return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : _err };
            };
        };
        if (((_padSize : stdgo.GoInt) > (_payload.length) : Bool)) {
            _countError(("frame_data_pad_too_big" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2connError.T_http2connError((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), ("pad size larger than data payload" : stdgo.GoString)) : stdgo._internal.net.http.Http_T_http2connError.T_http2connError)) };
        };
        _f._data = (_payload.__slice__(0, ((_payload.length) - (_padSize : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
