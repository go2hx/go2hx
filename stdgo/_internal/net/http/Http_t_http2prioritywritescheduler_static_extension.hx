package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2priorityWriteScheduler_asInterface) class T_http2priorityWriteScheduler_static_extension {
    @:keep
    @:tdfield
    static public function pop( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        var _wr = ({} : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _ok = false;
        @:check2 (@:checkr _ws ?? throw "null pointer dereference")._root._walkReadyInOrder(false, (stdgo.Go.setRef((@:checkr _ws ?? throw "null pointer dereference")._tmp) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>>), function(_n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>, _openParent:Bool):Bool {
            var _limit = ((2147483647 : stdgo.GoInt32) : stdgo.GoInt32);
            if (_openParent) {
                _limit = (@:checkr _ws ?? throw "null pointer dereference")._writeThrottleLimit;
            };
            {
                var __tmp__ = @:check2 (@:checkr _n ?? throw "null pointer dereference")._q._consume(_limit);
                _wr = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (!_ok) {
                return false;
            };
            @:check2r _n._addBytes((_wr.dataSize() : stdgo.GoInt64));
            if (_openParent) {
                (@:checkr _ws ?? throw "null pointer dereference")._writeThrottleLimit = ((@:checkr _ws ?? throw "null pointer dereference")._writeThrottleLimit + ((1024 : stdgo.GoInt32)) : stdgo.GoInt32);
                if (((@:checkr _ws ?? throw "null pointer dereference")._writeThrottleLimit < (0 : stdgo.GoInt32) : Bool)) {
                    (@:checkr _ws ?? throw "null pointer dereference")._writeThrottleLimit = (2147483647 : stdgo.GoInt32);
                };
            } else if ((@:checkr _ws ?? throw "null pointer dereference")._enableWriteThrottle) {
                (@:checkr _ws ?? throw "null pointer dereference")._writeThrottleLimit = (1024 : stdgo.GoInt32);
            };
            return true;
        });
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } = { _0 : _wr?.__copy__(), _1 : _ok };
            _wr = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function push( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        var _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
        if (_wr._isControl()) {
            _n = (stdgo.Go.setRef((@:checkr _ws ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
        } else {
            var _id = (_wr.streamID() : stdgo.GoUInt32);
            _n = ((@:checkr _ws ?? throw "null pointer dereference")._nodes[_id] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
            if ((_n == null || (_n : Dynamic).__nil__)) {
                if ((_wr.dataSize() > (0 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(("add DATA on non-open stream" : stdgo.GoString));
                };
                _n = (stdgo.Go.setRef((@:checkr _ws ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
            };
        };
        @:check2 (@:checkr _n ?? throw "null pointer dereference")._q._push(_wr);
    }
    @:keep
    @:tdfield
    static public function adjustStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        if (_streamID == ((0u32 : stdgo.GoUInt32))) {
            throw stdgo.Go.toInterface(("adjustPriority on root" : stdgo.GoString));
        };
        var _n = ((@:checkr _ws ?? throw "null pointer dereference")._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
        if ((_n == null || (_n : Dynamic).__nil__)) {
            if (((_streamID <= (@:checkr _ws ?? throw "null pointer dereference")._maxID : Bool) || ((@:checkr _ws ?? throw "null pointer dereference")._maxIdleNodesInTree == (0 : stdgo.GoInt)) : Bool)) {
                return;
            };
            (@:checkr _ws ?? throw "null pointer dereference")._maxID = _streamID;
            _n = (stdgo.Go.setRef(({ _q : (@:check2 (@:checkr _ws ?? throw "null pointer dereference")._queuePool._get() : stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue)?.__copy__(), _id : _streamID, _weight : (15 : stdgo.GoUInt8), _state : (2 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState) } : stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode)) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
            @:check2r _n._setParent((stdgo.Go.setRef((@:checkr _ws ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
            (@:checkr _ws ?? throw "null pointer dereference")._nodes[_streamID] = _n;
            @:check2r _ws._addClosedOrIdleNode((stdgo.Go.setRef((@:checkr _ws ?? throw "null pointer dereference")._idleNodes) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>>), (@:checkr _ws ?? throw "null pointer dereference")._maxIdleNodesInTree, _n);
        };
        var _parent = ((@:checkr _ws ?? throw "null pointer dereference")._nodes[_priority.streamDep] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
        if ((_parent == null || (_parent : Dynamic).__nil__)) {
            @:check2r _n._setParent((stdgo.Go.setRef((@:checkr _ws ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
            (@:checkr _n ?? throw "null pointer dereference")._weight = (15 : stdgo.GoUInt8);
            return;
        };
        if (_n == (_parent)) {
            return;
        };
        {
            var _x = (@:checkr _parent ?? throw "null pointer dereference")._parent;
            while ((_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__))) {
                if (_x == (_n)) {
                    @:check2r _parent._setParent((@:checkr _n ?? throw "null pointer dereference")._parent);
                    break;
                };
                _x = (@:checkr _x ?? throw "null pointer dereference")._parent;
            };
        };
        if (_priority.exclusive) {
            var _k = (@:checkr _parent ?? throw "null pointer dereference")._kids;
            while ((_k != null && ((_k : Dynamic).__nil__ == null || !(_k : Dynamic).__nil__))) {
                var _next = (@:checkr _k ?? throw "null pointer dereference")._next;
                if (_k != (_n)) {
                    @:check2r _k._setParent(_n);
                };
                _k = _next;
            };
        };
        @:check2r _n._setParent(_parent);
        (@:checkr _n ?? throw "null pointer dereference")._weight = _priority.weight;
    }
    @:keep
    @:tdfield
    static public function closeStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _streamID:stdgo.GoUInt32):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        if (_streamID == ((0u32 : stdgo.GoUInt32))) {
            throw stdgo.Go.toInterface(("violation of WriteScheduler interface: cannot close stream 0" : stdgo.GoString));
        };
        if ((((@:checkr _ws ?? throw "null pointer dereference")._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>)) == null || ((@:checkr _ws ?? throw "null pointer dereference")._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>) : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(stdgo._internal.net.http.Http__fmt._fmt.sprintf(("violation of WriteScheduler interface: unknown stream %d" : stdgo.GoString), stdgo.Go.toInterface(_streamID)));
        };
        if ((@:checkr ((@:checkr _ws ?? throw "null pointer dereference")._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>)) ?? throw "null pointer dereference")._state != ((0 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState))) {
            throw stdgo.Go.toInterface(stdgo._internal.net.http.Http__fmt._fmt.sprintf(("violation of WriteScheduler interface: stream %d already closed" : stdgo.GoString), stdgo.Go.toInterface(_streamID)));
        };
        var _n = ((@:checkr _ws ?? throw "null pointer dereference")._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
        (@:checkr _n ?? throw "null pointer dereference")._state = (1 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState);
        @:check2r _n._addBytes(-(@:checkr _n ?? throw "null pointer dereference")._bytes);
        var _q = ((@:checkr _n ?? throw "null pointer dereference")._q?.__copy__() : stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue);
        @:check2 (@:checkr _ws ?? throw "null pointer dereference")._queuePool._put((stdgo.Go.setRef(_q) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>));
        (@:checkr _n ?? throw "null pointer dereference")._q._s = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>);
        if (((@:checkr _ws ?? throw "null pointer dereference")._maxClosedNodesInTree > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _ws._addClosedOrIdleNode((stdgo.Go.setRef((@:checkr _ws ?? throw "null pointer dereference")._closedNodes) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>>), (@:checkr _ws ?? throw "null pointer dereference")._maxClosedNodesInTree, _n);
        } else {
            @:check2r _ws._removeNode(_n);
        };
    }
    @:keep
    @:tdfield
    static public function openStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        {
            var _curr = ((@:checkr _ws ?? throw "null pointer dereference")._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
            if ((_curr != null && ((_curr : Dynamic).__nil__ == null || !(_curr : Dynamic).__nil__))) {
                if ((@:checkr _curr ?? throw "null pointer dereference")._state != ((2 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState))) {
                    throw stdgo.Go.toInterface(stdgo._internal.net.http.Http__fmt._fmt.sprintf(("stream %d already opened" : stdgo.GoString), stdgo.Go.toInterface(_streamID)));
                };
                (@:checkr _curr ?? throw "null pointer dereference")._state = (0 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState);
                return;
            };
        };
        var _parent = ((@:checkr _ws ?? throw "null pointer dereference")._nodes[_options.pusherID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
        if ((_parent == null || (_parent : Dynamic).__nil__)) {
            _parent = (stdgo.Go.setRef((@:checkr _ws ?? throw "null pointer dereference")._root) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
        };
        var _n = (stdgo.Go.setRef(({ _q : (@:check2 (@:checkr _ws ?? throw "null pointer dereference")._queuePool._get() : stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue)?.__copy__(), _id : _streamID, _weight : (15 : stdgo.GoUInt8), _state : (0 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState) } : stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode)) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
        @:check2r _n._setParent(_parent);
        (@:checkr _ws ?? throw "null pointer dereference")._nodes[_streamID] = _n;
        if ((_streamID > (@:checkr _ws ?? throw "null pointer dereference")._maxID : Bool)) {
            (@:checkr _ws ?? throw "null pointer dereference")._maxID = _streamID;
        };
    }
}
