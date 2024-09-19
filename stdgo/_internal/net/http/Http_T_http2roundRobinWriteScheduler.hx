package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler_static_extension.T_http2roundRobinWriteScheduler_static_extension) class T_http2roundRobinWriteScheduler {
    public var _control : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue = ({} : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue);
    public var _streams : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>);
    public var _head : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>);
    public var _queuePool : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool = new stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool(0, 0);
    public function new(?_control:stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue, ?_streams:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>>, ?_head:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>, ?_queuePool:stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool) {
        if (_control != null) this._control = _control;
        if (_streams != null) this._streams = _streams;
        if (_head != null) this._head = _head;
        if (_queuePool != null) this._queuePool = _queuePool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2roundRobinWriteScheduler(_control, _streams, _head, _queuePool);
    }
}
