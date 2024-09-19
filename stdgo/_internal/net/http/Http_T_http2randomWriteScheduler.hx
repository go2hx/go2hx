package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2randomWriteScheduler_static_extension.T_http2randomWriteScheduler_static_extension) class T_http2randomWriteScheduler {
    public var _zero : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue = ({} : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue);
    public var _sq : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>);
    public var _queuePool : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool = new stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool(0, 0);
    public function new(?_zero:stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue, ?_sq:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>, ?_queuePool:stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool) {
        if (_zero != null) this._zero = _zero;
        if (_sq != null) this._sq = _sq;
        if (_queuePool != null) this._queuePool = _queuePool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2randomWriteScheduler(_zero, _sq, _queuePool);
    }
}
