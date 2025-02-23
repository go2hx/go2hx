package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2roundRobinWriteScheduler_asInterface) class T_http2roundRobinWriteScheduler_static_extension {
    @:keep
    @:tdfield
    static public function pop( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
        if (!@:check2 (@:checkr _ws ?? throw "null pointer dereference")._control._empty()) {
            return { _0 : @:check2 (@:checkr _ws ?? throw "null pointer dereference")._control._shift()?.__copy__(), _1 : true };
        };
        if (((@:checkr _ws ?? throw "null pointer dereference")._head == null || ((@:checkr _ws ?? throw "null pointer dereference")._head : Dynamic).__nil__)) {
            return { _0 : (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _1 : false };
        };
        var _q = (@:checkr _ws ?? throw "null pointer dereference")._head;
        while (true) {
            {
                var __tmp__ = @:check2r _q._consume((2147483647 : stdgo.GoInt32)), _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    (@:checkr _ws ?? throw "null pointer dereference")._head = (@:checkr _q ?? throw "null pointer dereference")._next;
                    return { _0 : _wr?.__copy__(), _1 : true };
                };
            };
            _q = (@:checkr _q ?? throw "null pointer dereference")._next;
            if (_q == ((@:checkr _ws ?? throw "null pointer dereference")._head)) {
                break;
            };
        };
        return { _0 : (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _1 : false };
    }
    @:keep
    @:tdfield
    static public function push( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
        if (_wr._isControl()) {
            @:check2 (@:checkr _ws ?? throw "null pointer dereference")._control._push(_wr);
            return;
        };
        var _q = ((@:checkr _ws ?? throw "null pointer dereference")._streams[_wr.streamID()] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>));
        if ((_q == null || (_q : Dynamic).__nil__)) {
            if ((_wr.dataSize() > (0 : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("add DATA on non-open stream" : stdgo.GoString));
            };
            @:check2 (@:checkr _ws ?? throw "null pointer dereference")._control._push(_wr);
            return;
        };
        @:check2r _q._push(_wr);
    }
    @:keep
    @:tdfield
    static public function adjustStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
    }
    @:keep
    @:tdfield
    static public function closeStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>, _streamID:stdgo.GoUInt32):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
        var _q = ((@:checkr _ws ?? throw "null pointer dereference")._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>));
        if ((_q == null || (_q : Dynamic).__nil__)) {
            return;
        };
        if ((@:checkr _q ?? throw "null pointer dereference")._next == (_q)) {
            (@:checkr _ws ?? throw "null pointer dereference")._head = null;
        } else {
            (@:checkr (@:checkr _q ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._next = (@:checkr _q ?? throw "null pointer dereference")._next;
            (@:checkr (@:checkr _q ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._prev = (@:checkr _q ?? throw "null pointer dereference")._prev;
            if ((@:checkr _ws ?? throw "null pointer dereference")._head == (_q)) {
                (@:checkr _ws ?? throw "null pointer dereference")._head = (@:checkr _q ?? throw "null pointer dereference")._next;
            };
        };
        if ((@:checkr _ws ?? throw "null pointer dereference")._streams != null) (@:checkr _ws ?? throw "null pointer dereference")._streams.__remove__(_streamID);
        @:check2 (@:checkr _ws ?? throw "null pointer dereference")._queuePool._put(_q);
    }
    @:keep
    @:tdfield
    static public function openStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
        if ((((@:checkr _ws ?? throw "null pointer dereference")._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>)) != null && (((@:checkr _ws ?? throw "null pointer dereference")._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>) : Dynamic).__nil__ == null || !((@:checkr _ws ?? throw "null pointer dereference")._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>) : Dynamic).__nil__))) {
            throw stdgo.Go.toInterface(stdgo._internal.net.http.Http__fmt._fmt.errorf(("stream %d already opened" : stdgo.GoString), stdgo.Go.toInterface(_streamID)));
        };
        var _q = @:check2 (@:checkr _ws ?? throw "null pointer dereference")._queuePool._get();
        (@:checkr _ws ?? throw "null pointer dereference")._streams[_streamID] = _q;
        if (((@:checkr _ws ?? throw "null pointer dereference")._head == null || ((@:checkr _ws ?? throw "null pointer dereference")._head : Dynamic).__nil__)) {
            (@:checkr _ws ?? throw "null pointer dereference")._head = _q;
            (@:checkr _q ?? throw "null pointer dereference")._next = _q;
            (@:checkr _q ?? throw "null pointer dereference")._prev = _q;
        } else {
            (@:checkr _q ?? throw "null pointer dereference")._prev = (@:checkr (@:checkr _ws ?? throw "null pointer dereference")._head ?? throw "null pointer dereference")._prev;
            (@:checkr _q ?? throw "null pointer dereference")._next = (@:checkr _ws ?? throw "null pointer dereference")._head;
            (@:checkr (@:checkr _q ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._next = _q;
            (@:checkr (@:checkr _q ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._prev = _q;
        };
    }
}
