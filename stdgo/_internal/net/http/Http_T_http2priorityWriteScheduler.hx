package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension) class T_http2priorityWriteScheduler {
    public var _root : stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode = ({} : stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode);
    public var _nodes : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>);
    public var _maxID : stdgo.GoUInt32 = 0;
    public var _closedNodes : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>);
    public var _idleNodes : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>);
    public var _maxClosedNodesInTree : stdgo.GoInt = 0;
    public var _maxIdleNodesInTree : stdgo.GoInt = 0;
    public var _writeThrottleLimit : stdgo.GoInt32 = 0;
    public var _enableWriteThrottle : Bool = false;
    public var _tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>);
    public var _queuePool : stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool = new stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool(0, 0);
    public function new(?_root:stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode, ?_nodes:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>, ?_maxID:stdgo.GoUInt32, ?_closedNodes:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>, ?_idleNodes:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>, ?_maxClosedNodesInTree:stdgo.GoInt, ?_maxIdleNodesInTree:stdgo.GoInt, ?_writeThrottleLimit:stdgo.GoInt32, ?_enableWriteThrottle:Bool, ?_tmp:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>, ?_queuePool:stdgo._internal.net.http.Http_T_http2writeQueuePool.T_http2writeQueuePool) {
        if (_root != null) this._root = _root;
        if (_nodes != null) this._nodes = _nodes;
        if (_maxID != null) this._maxID = _maxID;
        if (_closedNodes != null) this._closedNodes = _closedNodes;
        if (_idleNodes != null) this._idleNodes = _idleNodes;
        if (_maxClosedNodesInTree != null) this._maxClosedNodesInTree = _maxClosedNodesInTree;
        if (_maxIdleNodesInTree != null) this._maxIdleNodesInTree = _maxIdleNodesInTree;
        if (_writeThrottleLimit != null) this._writeThrottleLimit = _writeThrottleLimit;
        if (_enableWriteThrottle != null) this._enableWriteThrottle = _enableWriteThrottle;
        if (_tmp != null) this._tmp = _tmp;
        if (_queuePool != null) this._queuePool = _queuePool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2priorityWriteScheduler(
_root,
_nodes,
_maxID,
_closedNodes,
_idleNodes,
_maxClosedNodesInTree,
_maxIdleNodesInTree,
_writeThrottleLimit,
_enableWriteThrottle,
_tmp,
_queuePool);
    }
}
