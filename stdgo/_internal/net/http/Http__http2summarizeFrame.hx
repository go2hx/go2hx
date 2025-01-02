package stdgo._internal.net.http;
function _http2summarizeFrame(_f:stdgo._internal.net.http.Http_T_http2Frame.T_http2Frame):stdgo.GoString {
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        _f.header()._writeDebug((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>));
        {
            final __type__ = _f;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2SettingsFrame.T_http2SettingsFrame>) : __type__.__underlying__().value;
                var _n = (0 : stdgo.GoInt);
                @:check2r _f.foreachSetting(function(_s:stdgo._internal.net.http.Http_T_http2Setting.T_http2Setting):stdgo.Error {
                    _n++;
                    if (_n == ((1 : stdgo.GoInt))) {
                        @:check2 _buf.writeString((", settings:" : stdgo.GoString));
                    };
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (" %v=%v," : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_s.iD)), stdgo.Go.toInterface(_s.val));
                    return (null : stdgo.Error);
                });
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    @:check2 _buf.truncate((@:check2 _buf.len() - (1 : stdgo.GoInt) : stdgo.GoInt));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2DataFrame.T_http2DataFrame>) : __type__.__underlying__().value;
                var _data = @:check2r _f.data();
                {};
                if (((_data.length) > (256 : stdgo.GoInt) : Bool)) {
                    _data = (_data.__slice__(0, (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (" data=%q" : stdgo.GoString), stdgo.Go.toInterface(_data));
                if (((@:check2r _f.data().length) > (256 : stdgo.GoInt) : Bool)) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (" (%d bytes omitted)" : stdgo.GoString), stdgo.Go.toInterface(((@:check2r _f.data().length) - (256 : stdgo.GoInt) : stdgo.GoInt)));
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2WindowUpdateFrame.T_http2WindowUpdateFrame>) : __type__.__underlying__().value;
                if ((@:checkr _f ?? throw "null pointer dereference")._http2FrameHeader.streamID == ((0u32 : stdgo.GoUInt32))) {
                    @:check2 _buf.writeString((" (conn)" : stdgo.GoString));
                };
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (" incr=%v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").increment));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2PingFrame.T_http2PingFrame>) : __type__.__underlying__().value;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (" ping=%q" : stdgo.GoString), stdgo.Go.toInterface(((@:checkr _f ?? throw "null pointer dereference").data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2GoAwayFrame.T_http2GoAwayFrame>) : __type__.__underlying__().value;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (" LastStreamID=%v ErrCode=%v Debug=%q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").lastStreamID), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").errCode)), stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._debugData));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2RSTStreamFrame.T_http2RSTStreamFrame>) : __type__.__underlying__().value;
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (" ErrCode=%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _f ?? throw "null pointer dereference").errCode)));
            };
        };
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
