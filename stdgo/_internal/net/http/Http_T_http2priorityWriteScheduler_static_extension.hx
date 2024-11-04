package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2priorityWriteScheduler_asInterface) class T_http2priorityWriteScheduler_static_extension {
    @:keep
    static public function _removeNode( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>, _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler> = _ws;
        {
            var _k = _n._kids;
            while (_k != null && ((_k : Dynamic).__nil__ == null || !(_k : Dynamic).__nil__)) {
                _k._setParent(_n._parent);
                _k = _k._next;
            };
        };
        _n._setParent(null);
        if (_ws._nodes != null) _ws._nodes.remove(_n._id);
    }
    @:keep
    static public function _addClosedOrIdleNode( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>, _list:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>>, _maxSize:stdgo.GoInt, _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler> = _ws;
        if (_maxSize == ((0 : stdgo.GoInt))) {
            return;
        };
        if (((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).length) == (_maxSize)) {
            _ws._removeNode(((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>))[(0 : stdgo.GoInt)]);
            var _x = (((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>)).__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>);
            stdgo.Go.copySlice((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>), _x);
            (_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).__setData__((((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>)).__slice__(0, (_x.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>));
        };
        (_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).__setData__(((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).__append__(_n)));
    }
    @:keep
    static public function pop( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>):{ var _0 : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler> = _ws;
        var _wr = ({} : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest), _ok = false;
        _ws._root._walkReadyInOrder(false, (stdgo.Go.setRef(_ws._tmp) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>>), function(_n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, _openParent:Bool):Bool {
            var _limit = ((2147483647 : stdgo.GoInt32) : stdgo.GoInt32);
            if (_openParent) {
                _limit = _ws._writeThrottleLimit;
            };
            {
                var __tmp__ = _n._q._consume(_limit);
                _wr = __tmp__._0?.__copy__();
                _ok = __tmp__._1;
            };
            if (!_ok) {
                return false;
            };
            _n._addBytes((_wr.dataSize() : stdgo.GoInt64));
            if (_openParent) {
                _ws._writeThrottleLimit = (_ws._writeThrottleLimit + ((1024 : stdgo.GoInt32)) : stdgo.GoInt32);
                if ((_ws._writeThrottleLimit < (0 : stdgo.GoInt32) : Bool)) {
                    _ws._writeThrottleLimit = (2147483647 : stdgo.GoInt32);
                };
            } else if (_ws._enableWriteThrottle) {
                _ws._writeThrottleLimit = (1024 : stdgo.GoInt32);
            };
            return true;
        });
        return { _0 : _wr?.__copy__(), _1 : _ok };
    }
    @:keep
    static public function push( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>, _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler> = _ws;
        var _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
        if (_wr._isControl()) {
            _n = (stdgo.Go.setRef(_ws._root) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
        } else {
            var _id = (_wr.streamID() : stdgo.GoUInt32);
            _n = (_ws._nodes[_id] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>));
            if (_n == null || (_n : Dynamic).__nil__) {
                if ((_wr.dataSize() > (0 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(("add DATA on non-open stream" : stdgo.GoString));
                };
                _n = (stdgo.Go.setRef(_ws._root) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
            };
        };
        _n._q._push(_wr?.__copy__());
    }
    @:keep
    static public function adjustStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler> = _ws;
        if (_streamID == ((0u32 : stdgo.GoUInt32))) {
            throw stdgo.Go.toInterface(("adjustPriority on root" : stdgo.GoString));
        };
        var _n = (_ws._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>));
        if (_n == null || (_n : Dynamic).__nil__) {
            if (((_streamID <= _ws._maxID : Bool) || (_ws._maxIdleNodesInTree == (0 : stdgo.GoInt)) : Bool)) {
                return;
            };
            _ws._maxID = _streamID;
            _n = (stdgo.Go.setRef(({ _q : (_ws._queuePool._get() : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue)?.__copy__(), _id : _streamID, _weight : (15 : stdgo.GoUInt8), _state : (2 : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState) } : stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
            _n._setParent((stdgo.Go.setRef(_ws._root) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>));
            _ws._nodes[_streamID] = _n;
            _ws._addClosedOrIdleNode((stdgo.Go.setRef(_ws._idleNodes) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>>), _ws._maxIdleNodesInTree, _n);
        };
        var _parent = (_ws._nodes[_priority.streamDep] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>));
        if (_parent == null || (_parent : Dynamic).__nil__) {
            _n._setParent((stdgo.Go.setRef(_ws._root) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>));
            _n._weight = (15 : stdgo.GoUInt8);
            return;
        };
        if (_n == (_parent)) {
            return;
        };
        {
            var _x = _parent._parent;
            while (_x != null && ((_x : Dynamic).__nil__ == null || !(_x : Dynamic).__nil__)) {
                if (_x == (_n)) {
                    _parent._setParent(_n._parent);
                    break;
                };
                _x = _x._parent;
            };
        };
        if (_priority.exclusive) {
            var _k = _parent._kids;
            while (_k != null && ((_k : Dynamic).__nil__ == null || !(_k : Dynamic).__nil__)) {
                var _next = _k._next;
                if (_k != (_n)) {
                    _k._setParent(_n);
                };
                _k = _next;
            };
        };
        _n._setParent(_parent);
        _n._weight = _priority.weight;
    }
    @:keep
    static public function closeStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>, _streamID:stdgo.GoUInt32):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler> = _ws;
        if (_streamID == ((0u32 : stdgo.GoUInt32))) {
            throw stdgo.Go.toInterface(("violation of WriteScheduler interface: cannot close stream 0" : stdgo.GoString));
        };
        if ((_ws._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>)) == null || (_ws._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>) : Dynamic).__nil__) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("violation of WriteScheduler interface: unknown stream %d" : stdgo.GoString), stdgo.Go.toInterface(_streamID)));
        };
        if ((_ws._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>))._state != ((0 : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("violation of WriteScheduler interface: stream %d already closed" : stdgo.GoString), stdgo.Go.toInterface(_streamID)));
        };
        var _n = (_ws._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>));
        _n._state = (1 : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState);
        _n._addBytes(-_n._bytes);
        var _q = (_n._q?.__copy__() : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue);
        _ws._queuePool._put((stdgo.Go.setRef(_q) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>));
        _n._q._s = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>);
        if ((_ws._maxClosedNodesInTree > (0 : stdgo.GoInt) : Bool)) {
            _ws._addClosedOrIdleNode((stdgo.Go.setRef(_ws._closedNodes) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>>), _ws._maxClosedNodesInTree, _n);
        } else {
            _ws._removeNode(_n);
        };
    }
    @:keep
    static public function openStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler> = _ws;
        {
            var _curr = (_ws._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>));
            if (_curr != null && ((_curr : Dynamic).__nil__ == null || !(_curr : Dynamic).__nil__)) {
                if (_curr._state != ((2 : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState))) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("stream %d already opened" : stdgo.GoString), stdgo.Go.toInterface(_streamID)));
                };
                _curr._state = (0 : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState);
                return;
            };
        };
        var _parent = (_ws._nodes[_options.pusherID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>));
        if (_parent == null || (_parent : Dynamic).__nil__) {
            _parent = (stdgo.Go.setRef(_ws._root) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
        };
        var _n = (stdgo.Go.setRef(({ _q : (_ws._queuePool._get() : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue)?.__copy__(), _id : _streamID, _weight : (15 : stdgo.GoUInt8), _state : (0 : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState) } : stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
        _n._setParent(_parent);
        _ws._nodes[_streamID] = _n;
        if ((_streamID > _ws._maxID : Bool)) {
            _ws._maxID = _streamID;
        };
    }
}
