package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeResHeaders_asInterface) class T_http2writeResHeaders_static_extension {
    @:keep
    static public function _writeHeaderBlock( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext, _frag:stdgo.Slice<stdgo.GoUInt8>, _firstFrag:Bool, _lastFrag:Bool):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders> = _w;
        if (_firstFrag) {
            return _ctx.framer().writeHeaders(({ streamID : _w._streamID, blockFragment : _frag, endStream : _w._endStream, endHeaders : _lastFrag } : stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam));
        } else {
            return _ctx.framer().writeContinuation(_w._streamID, _lastFrag, _frag);
        };
    }
    @:keep
    static public function _writeFrame( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders> = _w;
        var __tmp__ = _ctx.headerEncoder(), _enc:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = __tmp__._0, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = __tmp__._1;
        _buf.reset();
        if (_w._httpResCode != ((0 : stdgo.GoInt))) {
            stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":status" : stdgo.GoString), stdgo._internal.net.http.Http__http2httpCodeString._http2httpCodeString(_w._httpResCode)?.__copy__());
        };
        stdgo._internal.net.http.Http__http2encodeHeaders._http2encodeHeaders(_enc, _w._h, _w._trailers);
        if (_w._contentType != (stdgo.Go.str())) {
            stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, ("content-type" : stdgo.GoString), _w._contentType?.__copy__());
        };
        if (_w._contentLength != (stdgo.Go.str())) {
            stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, ("content-length" : stdgo.GoString), _w._contentLength?.__copy__());
        };
        if (_w._date != (stdgo.Go.str())) {
            stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, ("date" : stdgo.GoString), _w._date?.__copy__());
        };
        var _headerBlock = _buf.bytes();
        if (((_headerBlock.length == (0 : stdgo.GoInt)) && (_w._trailers == null) : Bool)) {
            throw stdgo.Go.toInterface(("unexpected empty hpack" : stdgo.GoString));
        };
        return stdgo._internal.net.http.Http__http2splitHeaderBlock._http2splitHeaderBlock(_ctx, _headerBlock, _w._writeHeaderBlock);
    }
    @:keep
    static public function _staysWithinBuffer( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders> = _w;
        return false;
    }
}
