package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2write100ContinueHeadersFrame_asInterface) class T_http2write100ContinueHeadersFrame_static_extension {
    @:keep
    static public function _staysWithinBuffer( _w:stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame = _w?.__copy__();
        return ((29 : stdgo.GoInt) <= _max : Bool);
    }
    @:keep
    static public function _writeFrame( _w:stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo._internal.net.http.Http_T_http2write100ContinueHeadersFrame.T_http2write100ContinueHeadersFrame = _w?.__copy__();
        var __tmp__ = _ctx.headerEncoder(), _enc:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = __tmp__._0, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = __tmp__._1;
        _buf.reset();
        stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":status" : stdgo.GoString), ("100" : stdgo.GoString));
        return _ctx.framer().writeHeaders(({ streamID : _w._streamID, blockFragment : _buf.bytes(), endStream : false, endHeaders : true } : stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam));
    }
}
