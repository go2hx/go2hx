package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2writeQueue_static_extension.T_http2writeQueue_static_extension) class T_http2writeQueue {
    public var _s : stdgo.Slice<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest> = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>);
    public var _prev : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>);
    public var _next : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>);
    public function new(?_s:stdgo.Slice<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>, ?_prev:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>, ?_next:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>) {
        if (_s != null) this._s = _s;
        if (_prev != null) this._prev = _prev;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2writeQueue(_s, _prev, _next);
    }
}
