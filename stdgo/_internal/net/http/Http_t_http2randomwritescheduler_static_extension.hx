package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2randomWriteScheduler_asInterface) class T_http2randomWriteScheduler_static_extension {
    @:keep
    @:tdfield
    static public function pop( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
        if (!@:check2 (@:checkr _ws ?? throw "null pointer dereference")._zero._empty()) {
            return { _0 : @:check2 (@:checkr _ws ?? throw "null pointer dereference")._zero._shift()?.__copy__(), _1 : true };
        };
        for (_streamID => _q in (@:checkr _ws ?? throw "null pointer dereference")._sq) {
            {
                var __tmp__ = @:check2r _q._consume((2147483647 : stdgo.GoInt32)), _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    if (@:check2r _q._empty()) {
                        if ((@:checkr _ws ?? throw "null pointer dereference")._sq != null) (@:checkr _ws ?? throw "null pointer dereference")._sq.__remove__(_streamID);
                        @:check2 (@:checkr _ws ?? throw "null pointer dereference")._queuePool._put(_q);
                    };
                    return { _0 : _wr?.__copy__(), _1 : true };
                };
            };
        };
        return { _0 : (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _1 : false };
    }
    @:keep
    @:tdfield
    static public function push( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
        if (_wr._isControl()) {
            @:check2 (@:checkr _ws ?? throw "null pointer dereference")._zero._push(_wr);
            return;
        };
        var _id = (_wr.streamID() : stdgo.GoUInt32);
        var __tmp__ = ((@:checkr _ws ?? throw "null pointer dereference")._sq != null && (@:checkr _ws ?? throw "null pointer dereference")._sq.__exists__(_id) ? { _0 : (@:checkr _ws ?? throw "null pointer dereference")._sq[_id], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>), _1 : false }), _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _q = @:check2 (@:checkr _ws ?? throw "null pointer dereference")._queuePool._get();
            (@:checkr _ws ?? throw "null pointer dereference")._sq[_id] = _q;
        };
        @:check2r _q._push(_wr);
    }
    @:keep
    @:tdfield
    static public function adjustStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
    }
    @:keep
    @:tdfield
    static public function closeStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>, _streamID:stdgo.GoUInt32):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
        var __tmp__ = ((@:checkr _ws ?? throw "null pointer dereference")._sq != null && (@:checkr _ws ?? throw "null pointer dereference")._sq.__exists__(_streamID) ? { _0 : (@:checkr _ws ?? throw "null pointer dereference")._sq[_streamID], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>), _1 : false }), _q:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue> = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            return;
        };
        if ((@:checkr _ws ?? throw "null pointer dereference")._sq != null) (@:checkr _ws ?? throw "null pointer dereference")._sq.__remove__(_streamID);
        @:check2 (@:checkr _ws ?? throw "null pointer dereference")._queuePool._put(_q);
    }
    @:keep
    @:tdfield
    static public function openStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler>, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2randomwritescheduler.T_http2randomWriteScheduler> = _ws;
    }
}
