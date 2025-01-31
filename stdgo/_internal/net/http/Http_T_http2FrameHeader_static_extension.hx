package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2FrameHeader_asInterface) class T_http2FrameHeader_static_extension {
    @:keep
    @:tdfield
    static public function string( _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = _h?.__copy__();
        var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        @:check2 _buf.writeString(("[FrameHeader " : stdgo.GoString));
        _h._writeDebug((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>));
        @:check2 _buf.writeByte((93 : stdgo.GoUInt8));
        return (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function header( _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader):stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader {
        @:recv var _h:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = _h?.__copy__();
        return _h?.__copy__();
    }
}
