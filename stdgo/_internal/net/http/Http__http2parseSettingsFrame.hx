package stdgo._internal.net.http;
function _http2parseSettingsFrame(__143:stdgo.Ref<stdgo._internal.net.http.Http_T_http2frameCache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame; var _1 : stdgo.Error; } {
        if ((_fh.flags.has((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) && (_fh.length_ > (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            _countError(("frame_settings_ack_with_length" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((6u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
        };
        if (_fh.streamID != ((0u32 : stdgo.GoUInt32))) {
            _countError(("frame_settings_has_stream" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
        };
        if (((_p.length) % (6 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            _countError(("frame_settings_mod_6" : stdgo.GoString));
            return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((6u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
        };
        var _f = (stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__(), _p : _p } : stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>);
        {
            var __tmp__ = _f.value((4 : stdgo._internal.net.http.Http_T_http2SettingID.T_http2SettingID)), _v:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((_ok && (_v > (2147483647u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                _countError(("frame_settings_window_size_too_big" : stdgo.GoString));
                return { _0 : (null : stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame), _1 : stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_T_http2ErrCode.T_http2ErrCode) : stdgo._internal.net.http.Http_T_http2ConnectionError.T_http2ConnectionError)) };
            };
        };
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
