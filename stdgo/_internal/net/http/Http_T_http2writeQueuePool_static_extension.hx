package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeQueuePool_asInterface) class T_http2writeQueuePool_static_extension {
    @:keep
    @:tdfield
    static public function _get( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool>):stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool> = _p;
        var _ln = ((_p : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool).length : stdgo.GoInt);
        if (_ln == ((0 : stdgo.GoInt))) {
            return (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>);
        };
        var _x = (_ln - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _q = ((_p : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool))[(_x : stdgo.GoInt)];
        ((_p : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool))[(_x : stdgo.GoInt)] = null;
        (_p : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool).__setData__((((_p : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool)).__slice__(0, _x) : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool));
        return _q;
    }
    @:keep
    @:tdfield
    static public function _put( _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool>, _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool> = _p;
        for (_i => _ in (@:checkr _q ?? throw "null pointer dereference")._s) {
            (@:checkr _q ?? throw "null pointer dereference")._s[(_i : stdgo.GoInt)] = (new stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest);
        };
        (@:checkr _q ?? throw "null pointer dereference")._s = ((@:checkr _q ?? throw "null pointer dereference")._s.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>);
        (_p : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool).__setData__(((_p : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool).__append__(_q)));
    }
}
