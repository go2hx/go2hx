package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writePushPromise_asInterface) class T_http2writePushPromise_static_extension {
    @:keep
    @:tdfield
    static public function _writeHeaderBlock( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext, _frag:stdgo.Slice<stdgo.GoUInt8>, _firstFrag:Bool, _lastFrag:Bool):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise> = _w;
        if (_firstFrag) {
            return @:check2r _ctx.framer().writePushPromise(({ streamID : (@:checkr _w ?? throw "null pointer dereference")._streamID, promiseID : (@:checkr _w ?? throw "null pointer dereference")._promisedID, blockFragment : _frag, endHeaders : _lastFrag } : stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam));
        } else {
            return @:check2r _ctx.framer().writeContinuation((@:checkr _w ?? throw "null pointer dereference")._streamID, _lastFrag, _frag);
        };
    }
    @:keep
    @:tdfield
    static public function _writeFrame( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise> = _w;
        var __tmp__ = _ctx.headerEncoder(), _enc:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = __tmp__._0, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = __tmp__._1;
        @:check2r _buf.reset();
        stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":method" : stdgo.GoString), (@:checkr _w ?? throw "null pointer dereference")._method?.__copy__());
        stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":scheme" : stdgo.GoString), (@:checkr (@:checkr _w ?? throw "null pointer dereference")._url ?? throw "null pointer dereference").scheme?.__copy__());
        stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":authority" : stdgo.GoString), (@:checkr (@:checkr _w ?? throw "null pointer dereference")._url ?? throw "null pointer dereference").host?.__copy__());
        stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":path" : stdgo.GoString), @:check2r (@:checkr _w ?? throw "null pointer dereference")._url.requestURI()?.__copy__());
        stdgo._internal.net.http.Http__http2encodeHeaders._http2encodeHeaders(_enc, (@:checkr _w ?? throw "null pointer dereference")._h, (null : stdgo.Slice<stdgo.GoString>));
        var _headerBlock = @:check2r _buf.bytes();
        if ((_headerBlock.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("unexpected empty hpack" : stdgo.GoString));
        };
        return stdgo._internal.net.http.Http__http2splitHeaderBlock._http2splitHeaderBlock(_ctx, _headerBlock, @:check2r _w._writeHeaderBlock);
    }
    @:keep
    @:tdfield
    static public function _staysWithinBuffer( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise> = _w;
        return false;
    }
}
