package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2priorityNode_static_extension.T_http2priorityNode_static_extension) class T_http2priorityNode {
    public var _q : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue = ({} : stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue);
    public var _id : stdgo.GoUInt32 = 0;
    public var _weight : stdgo.GoUInt8 = 0;
    public var _state : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState);
    public var _bytes : stdgo.GoInt64 = 0;
    public var _subtreeBytes : stdgo.GoInt64 = 0;
    public var _parent : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
    public var _kids : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
    public var _prev : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
    public var _next : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>);
    public function new(?_q:stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue, ?_id:stdgo.GoUInt32, ?_weight:stdgo.GoUInt8, ?_state:stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState, ?_bytes:stdgo.GoInt64, ?_subtreeBytes:stdgo.GoInt64, ?_parent:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, ?_kids:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, ?_prev:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, ?_next:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>) {
        if (_q != null) this._q = _q;
        if (_id != null) this._id = _id;
        if (_weight != null) this._weight = _weight;
        if (_state != null) this._state = _state;
        if (_bytes != null) this._bytes = _bytes;
        if (_subtreeBytes != null) this._subtreeBytes = _subtreeBytes;
        if (_parent != null) this._parent = _parent;
        if (_kids != null) this._kids = _kids;
        if (_prev != null) this._prev = _prev;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2priorityNode(_q, _id, _weight, _state, _bytes, _subtreeBytes, _parent, _kids, _prev, _next);
    }
}
