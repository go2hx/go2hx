package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2FrameHeader_asInterface) class T_http2FrameHeader_static_extension {
    @:keep
    static public function _invalidate( _h:stdgo.Ref<stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader> = _h;
        _h._valid = false;
    }
    @:keep
    static public function _checkValid( _h:stdgo.Ref<stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader> = _h;
        if (!_h._valid) {
            throw stdgo.Go.toInterface(("Frame accessor called on non-owned Frame" : stdgo.GoString));
        };
    }
    @:keep
    static public function _writeDebug( _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):Void {
        @:recv var _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = _h?.__copy__();
        _buf.writeString((_h.type.string() : stdgo.GoString)?.__copy__());
        if (_h.flags != ((0 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags))) {
            _buf.writeString((" flags=" : stdgo.GoString));
            var _set = (0 : stdgo.GoInt);
            {
                var _i = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
                while ((_i < (8 : stdgo.GoUInt8) : Bool)) {
                    if ((_h.flags & (((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags) << _i : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)) : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags) == ((0 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags))) {
                        {
                            _i++;
                            continue;
                        };
                    };
_set++;
if ((_set > (1 : stdgo.GoInt) : Bool)) {
                        _buf.writeByte((124 : stdgo.GoUInt8));
                    };
var _name = (((stdgo._internal.net.http.Http__http2flagName._http2flagName[_h.type] ?? (null : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags, stdgo.GoString>))[((1 : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags) << _i : stdgo._internal.net.http.Http_T_http2Flags.T_http2Flags)] ?? ("" : stdgo.GoString)).__copy__() : stdgo.GoString);
if (_name != (stdgo.Go.str())) {
                        _buf.writeString(_name.__copy__());
                    } else {
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), ("0x%x" : stdgo.GoString), stdgo.Go.toInterface(((1 : stdgo.GoInt) << _i : stdgo.GoInt)));
                    };
                    _i++;
                };
            };
        };
        if (_h.streamID != ((0u32 : stdgo.GoUInt32))) {
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), (" stream=%d" : stdgo.GoString), stdgo.Go.toInterface(_h.streamID));
        };
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf), (" len=%d" : stdgo.GoString), stdgo.Go.toInterface(_h.length_));
    }
    @:keep
    static public function string( _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = _h?.__copy__();
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        _buf.writeString(("[FrameHeader " : stdgo.GoString));
        _h._writeDebug(_buf__pointer__);
        _buf.writeByte((93 : stdgo.GoUInt8));
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function header( _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader):stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader {
        @:recv var _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = _h?.__copy__();
        return _h?.__copy__();
    }
}
