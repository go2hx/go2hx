package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2randomWriteScheduler_asInterface) class T_http2randomWriteScheduler_static_extension {
    @:keep
    static public function pop( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler>):{ var _0 : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler> = _ws;
        if (!_ws._zero._empty()) {
            return { _0 : _ws._zero._shift()?.__copy__(), _1 : true };
        };
        for (_streamID => _q in _ws._sq) {
            {
                var __tmp__ = _q._consume((2147483647 : stdgo.GoInt32)), _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    if (_q._empty()) {
                        if (_ws._sq != null) _ws._sq.remove(_streamID);
                        _ws._queuePool._put(_q);
                    };
                    return { _0 : _wr?.__copy__(), _1 : true };
                };
            };
        };
        return { _0 : (new stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest), _1 : false };
    }
    @:keep
    static public function push( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler>, _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler> = _ws;
        if (_wr._isControl()) {
            _ws._zero._push(_wr?.__copy__());
            return;
        };
        var _id = (_wr.streamID() : stdgo.GoUInt32);
        var __tmp__ = (_ws._sq != null && _ws._sq.exists(_id) ? { _0 : _ws._sq[_id], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>), _1 : false }), _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _q = _ws._queuePool._get();
            _ws._sq[_id] = _q;
        };
        _q._push(_wr?.__copy__());
    }
    @:keep
    static public function adjustStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler>, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler> = _ws;
    }
    @:keep
    static public function closeStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler>, _streamID:stdgo.GoUInt32):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler> = _ws;
        var __tmp__ = (_ws._sq != null && _ws._sq.exists(_streamID) ? { _0 : _ws._sq[_streamID], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>), _1 : false }), _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return;
        };
        if (_ws._sq != null) _ws._sq.remove(_streamID);
        _ws._queuePool._put(_q);
    }
    @:keep
    static public function openStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler>, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler> = _ws;
    }
}
