package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2roundRobinWriteScheduler_asInterface) class T_http2roundRobinWriteScheduler_static_extension {
    @:keep
    static public function pop( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler>):{ var _0 : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler> = _ws;
        if (!_ws._control._empty()) {
            return { _0 : _ws._control._shift()?.__copy__(), _1 : true };
        };
        if (_ws._head == null || (_ws._head : Dynamic).__nil__) {
            return { _0 : (new stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest), _1 : false };
        };
        var _q = _ws._head;
        while (true) {
            {
                var __tmp__ = _q._consume((2147483647 : stdgo.GoInt32)), _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _ws._head = _q._next;
                    return { _0 : _wr?.__copy__(), _1 : true };
                };
            };
            _q = _q._next;
            if (_q == (_ws._head)) {
                break;
            };
        };
        return { _0 : (new stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest), _1 : false };
    }
    @:keep
    static public function push( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler>, _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler> = _ws;
        if (_wr._isControl()) {
            _ws._control._push(_wr?.__copy__());
            return;
        };
        var _q = (_ws._streams[_wr.streamID()] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>));
        if (_q == null || (_q : Dynamic).__nil__) {
            if ((_wr.dataSize() > (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("add DATA on non-open stream" : stdgo.GoString));
            };
            _ws._control._push(_wr?.__copy__());
            return;
        };
        _q._push(_wr?.__copy__());
    }
    @:keep
    static public function adjustStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler>, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler> = _ws;
    }
    @:keep
    static public function closeStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler>, _streamID:stdgo.GoUInt32):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler> = _ws;
        var _q = (_ws._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>));
        if (_q == null || (_q : Dynamic).__nil__) {
            return;
        };
        if (_q._next == (_q)) {
            _ws._head = null;
        } else {
            _q._prev._next = _q._next;
            _q._next._prev = _q._prev;
            if (_ws._head == (_q)) {
                _ws._head = _q._next;
            };
        };
        if (_ws._streams != null) _ws._streams.remove(_streamID);
        _ws._queuePool._put(_q);
    }
    @:keep
    static public function openStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler>, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2roundRobinWriteScheduler.T_http2roundRobinWriteScheduler> = _ws;
        if ((_ws._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>)) != null && ((_ws._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>) : Dynamic).__nil__ == null || !(_ws._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>) : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_errorf.errorf(("stream %d already opened" : stdgo.GoString), stdgo.Go.toInterface(_streamID)));
        };
        var _q = _ws._queuePool._get();
        _ws._streams[_streamID] = _q;
        if (_ws._head == null || (_ws._head : Dynamic).__nil__) {
            _ws._head = _q;
            _q._next = _q;
            _q._prev = _q;
        } else {
            _q._prev = _ws._head._prev;
            _q._next = _ws._head;
            _q._prev._next = _q;
            _q._next._prev = _q;
        };
    }
}
