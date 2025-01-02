package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeResHeaders_asInterface) class T_http2writeResHeaders_static_extension {
    @:keep
    @:tdfield
    static public function _writeHeaderBlock( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext, _frag:stdgo.Slice<stdgo.GoUInt8>, _firstFrag:Bool, _lastFrag:Bool):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders> = _w;
        if (_firstFrag) {
            return @:check2r _ctx.framer().writeHeaders(({ streamID : (@:checkr _w ?? throw "null pointer dereference")._streamID, blockFragment : _frag, endStream : (@:checkr _w ?? throw "null pointer dereference")._endStream, endHeaders : _lastFrag } : stdgo._internal.net.http.Http_T_http2HeadersFrameParam.T_http2HeadersFrameParam));
        } else {
            return @:check2r _ctx.framer().writeContinuation((@:checkr _w ?? throw "null pointer dereference")._streamID, _lastFrag, _frag);
        };
    }
    @:keep
    @:tdfield
    static public function _writeFrame( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders> = _w;
        var __tmp__ = _ctx.headerEncoder(), _enc:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = __tmp__._0, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = __tmp__._1;
        @:check2r _buf.reset();
        if ((@:checkr _w ?? throw "null pointer dereference")._httpResCode != ((0 : stdgo.GoInt))) {
            stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":status" : stdgo.GoString), stdgo._internal.net.http.Http__http2httpCodeString._http2httpCodeString((@:checkr _w ?? throw "null pointer dereference")._httpResCode)?.__copy__());
        };
        stdgo._internal.net.http.Http__http2encodeHeaders._http2encodeHeaders(_enc, (@:checkr _w ?? throw "null pointer dereference")._h, (@:checkr _w ?? throw "null pointer dereference")._trailers);
        if ((@:checkr _w ?? throw "null pointer dereference")._contentType != (stdgo.Go.str())) {
            stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, ("content-type" : stdgo.GoString), (@:checkr _w ?? throw "null pointer dereference")._contentType?.__copy__());
        };
        if ((@:checkr _w ?? throw "null pointer dereference")._contentLength != (stdgo.Go.str())) {
            stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, ("content-length" : stdgo.GoString), (@:checkr _w ?? throw "null pointer dereference")._contentLength?.__copy__());
        };
        if ((@:checkr _w ?? throw "null pointer dereference")._date != (stdgo.Go.str())) {
            stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, ("date" : stdgo.GoString), (@:checkr _w ?? throw "null pointer dereference")._date?.__copy__());
        };
        var _headerBlock = @:check2r _buf.bytes();
        if (((_headerBlock.length == (0 : stdgo.GoInt)) && ((@:checkr _w ?? throw "null pointer dereference")._trailers == null) : Bool)) {
            throw stdgo.Go.toInterface(("unexpected empty hpack" : stdgo.GoString));
        };
        return stdgo._internal.net.http.Http__http2splitHeaderBlock._http2splitHeaderBlock(_ctx, _headerBlock, @:check2r _w._writeHeaderBlock);
    }
    @:keep
    @:tdfield
    static public function _staysWithinBuffer( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders>, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeResHeaders.T_http2writeResHeaders> = _w;
        return false;
    }
}
