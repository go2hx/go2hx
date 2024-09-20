package stdgo._internal.net.http;
function _http2parseHeadersFrame(__132:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        var _0 = (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _err = (null : stdgo.Error);
        var _hf = (stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__() } : stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame>);
        if (_fh.streamID == ((0u32 : stdgo.GoUInt32))) {
            _countError(("frame_headers_zero_stream" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_T_http2connError.T_http2connError((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode), ("HEADERS frame with stream ID 0" : stdgo.GoString)) : stdgo._internal.net.http.Http_T_http2connError.T_http2connError)) };
        };
        var _padLength:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        if (_fh.flags.has((8 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags))) {
            {
                {
                    var __tmp__ = stdgo._internal.net.http.Http__http2readByte._http2readByte(_p);
                    _p = __tmp__._0;
                    _padLength = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    _countError(("frame_headers_pad_short" : stdgo.GoString));
                    return { _0 : _0, _1 : _err };
                };
            };
        };
        if (_fh.flags.has((32 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags))) {
            var _v:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            {
                var __tmp__ = stdgo._internal.net.http.Http__http2readUint32._http2readUint32(_p);
                _p = __tmp__._0;
                _v = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                _countError(("frame_headers_prio_short" : stdgo.GoString));
                return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : _err };
            };
            _hf.priority.streamDep = (_v & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _hf.priority.exclusive = (_v != _hf.priority.streamDep);
            {
                var __tmp__ = stdgo._internal.net.http.Http__http2readByte._http2readByte(_p);
                _p = __tmp__._0;
                _hf.priority.weight = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                _countError(("frame_headers_prio_weight_short" : stdgo.GoString));
                return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : _err };
            };
        };
        if ((((_p.length) - (_padLength : stdgo.GoInt) : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool)) {
            _countError(("frame_headers_pad_too_big" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamError._http2streamError(_fh.streamID, (1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode))) };
        };
        _hf._headerFragBuf = (_p.__slice__(0, ((_p.length) - (_padLength : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return { _0 : stdgo.Go.asInterface(_hf), _1 : (null : stdgo.Error) };
    }
