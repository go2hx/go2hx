package stdgo._internal.net.http;
function _http2parsePushPromise(__137:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        var _0 = (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _err = (null : stdgo.Error);
        var _pp = (stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__() } : stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PushPromiseFrame.T_http2PushPromiseFrame>);
        if ((@:checkr _pp ?? throw "null pointer dereference")._http2FrameHeader.streamID == ((0u32 : stdgo.GoUInt32))) {
            _countError(("frame_pushpromise_zero_stream" : stdgo.GoString));
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
                _0 = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
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
                    _countError(("frame_pushpromise_pad_short" : stdgo.GoString));
                    return { _0 : _0, _1 : _err };
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__http2readUint32._http2readUint32(_p);
            _p = __tmp__._0;
            (@:checkr _pp ?? throw "null pointer dereference").promiseID = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            _countError(("frame_pushpromise_promiseid_short" : stdgo.GoString));
            return { _0 : _0, _1 : _err };
        };
        (@:checkr _pp ?? throw "null pointer dereference").promiseID = ((@:checkr _pp ?? throw "null pointer dereference").promiseID & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        if (((_padLength : stdgo.GoInt) > (_p.length) : Bool)) {
            _countError(("frame_pushpromise_pad_too_big" : stdgo.GoString));
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
                _0 = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _pp ?? throw "null pointer dereference")._headerFragBuf = (_p.__slice__(0, ((_p.length) - (_padLength : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_pp), _1 : (null : stdgo.Error) };
            _0 = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
