package stdgo._internal.net.http;
function _http2summarizeFrame(_f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame):stdgo.GoString {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        _f.header()._writeDebug(_buf__pointer__);
        {
            final __type__ = _f;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__().value;
                var _n = (0 : stdgo.GoInt);
                _f.foreachSetting(function(_s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting):stdgo.Error {
                    _n++;
                    if (_n == ((1 : stdgo.GoInt))) {
                        _buf.writeString((", settings:" : stdgo.GoString));
                    };
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf__pointer__), (" %v=%v," : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.id)), stdgo.Go.toInterface(_s.val));
                    return (null : stdgo.Error);
                });
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _buf.truncate((_buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__().value;
                var _data = _f.data();
                {};
                if (((_data.length) > (256 : stdgo.GoInt) : Bool)) {
                    _data = (_data.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf__pointer__), (" data=%q" : stdgo.GoString), stdgo.Go.toInterface(_data));
                if (((_f.data().length) > (256 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf__pointer__), (" (%d bytes omitted)" : stdgo.GoString), stdgo.Go.toInterface(((_f.data().length) - (256 : stdgo.GoInt) : stdgo.GoInt)));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__().value;
                if (_f._http2FrameHeader.streamID == ((0u32 : stdgo.GoUInt32))) {
                    _buf.writeString((" (conn)" : stdgo.GoString));
                };
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf__pointer__), (" incr=%v" : stdgo.GoString), stdgo.Go.toInterface(_f.increment));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__().value;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf__pointer__), (" ping=%q" : stdgo.GoString), stdgo.Go.toInterface((_f.data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__().value;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf__pointer__), (" LastStreamID=%v ErrCode=%v Debug=%q" : stdgo.GoString), stdgo.Go.toInterface(_f.lastStreamID), stdgo.Go.toInterface(stdgo.Go.asInterface(_f.errCode)), stdgo.Go.toInterface(_f._debugData));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__().value;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf__pointer__), (" ErrCode=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f.errCode)));
            };
        };
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
