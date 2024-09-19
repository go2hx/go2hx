package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writePushPromise_asInterface) class T_http2writePushPromise_static_extension {
    @:keep
    static public function _writeHeaderBlock( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext, _frag:stdgo.Slice<stdgo.GoUInt8>, _firstFrag:Bool, _lastFrag:Bool):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise> = _w;
        if (_firstFrag) {
            return _ctx.framer().writePushPromise(({ streamID : _w._streamID, promiseID : _w._promisedID, blockFragment : _frag, endHeaders : _lastFrag } : stdgo._internal.net.http.Http_T_http2PushPromiseParam.T_http2PushPromiseParam));
        } else {
            return _ctx.framer().writeContinuation(_w._streamID, _lastFrag, _frag);
        };
    }
    @:keep
    static public function _writeFrame( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>, _ctx:stdgo._internal.net.http.Http_T_http2writeContext.T_http2writeContext):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise> = _w;
        var __tmp__ = _ctx.headerEncoder(), _enc:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.http2.hpack.Hpack_Encoder.Encoder> = __tmp__._0, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> = __tmp__._1;
        _buf.reset();
        stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":method" : stdgo.GoString), _w._method?.__copy__());
        stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":scheme" : stdgo.GoString), _w._url.scheme?.__copy__());
        stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":authority" : stdgo.GoString), _w._url.host?.__copy__());
        stdgo._internal.net.http.Http__http2encKV._http2encKV(_enc, (":path" : stdgo.GoString), _w._url.requestURI()?.__copy__());
        stdgo._internal.net.http.Http__http2encodeHeaders._http2encodeHeaders(_enc, _w._h, (null : stdgo.Slice<stdgo.GoString>));
        var _headerBlock = _buf.bytes();
        if ((_headerBlock.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("unexpected empty hpack" : stdgo.GoString));
        };
        return stdgo._internal.net.http.Http__http2splitHeaderBlock._http2splitHeaderBlock(_ctx, _headerBlock, _w._writeHeaderBlock);
    }
    @:keep
    static public function _staysWithinBuffer( _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise>, _max:stdgo.GoInt):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writePushPromise.T_http2writePushPromise> = _w;
        return false;
    }
}
