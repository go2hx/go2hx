package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2priorityNode_asInterface) class T_http2priorityNode_static_extension {
    @:keep
    static public function _walkReadyInOrder( _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, _openParent:Bool, _tmp:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>>, _f:(stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, Bool) -> Bool):Bool {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = _n;
        if ((!_n._q._empty() && _f(_n, _openParent) : Bool)) {
            return true;
        };
        if (_n._kids == null || (_n._kids : Dynamic).__nil__) {
            return false;
        };
        if (_n._id != ((0u32 : stdgo.GoUInt32))) {
            _openParent = (_openParent || (_n._state == (0 : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState)) : Bool);
        };
        var _w = (_n._kids._weight : stdgo.GoUInt8);
        var _needSort = (false : Bool);
        {
            var _k = _n._kids._next;
            while (_k != null && ((_k : Dynamic).__nil__ == null || !(_k : Dynamic).__nil__)) {
                if (_k._weight != (_w)) {
                    _needSort = true;
                    break;
                };
                _k = _k._next;
            };
        };
        if (!_needSort) {
            {
                var _k = _n._kids;
                while (_k != null && ((_k : Dynamic).__nil__ == null || !(_k : Dynamic).__nil__)) {
                    if (_k._walkReadyInOrder(_openParent, _tmp, _f)) {
                        return true;
                    };
                    _k = _k._next;
                };
            };
            return false;
        };
        (_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).__setData__((((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>));
        while (_n._kids != null && ((_n._kids : Dynamic).__nil__ == null || !(_n._kids : Dynamic).__nil__)) {
            (_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).__setData__(((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).__append__(_n._kids)));
            _n._kids._setParent(null);
        };
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>) : stdgo._internal.net.http.Http_T_http2sortPriorityNodeSiblings.T_http2sortPriorityNodeSiblings)));
        {
            var _i = (((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                ((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>))[(_i : stdgo.GoInt)]._setParent(_n);
                _i--;
            };
        };
        {
            var _k = _n._kids;
            while (_k != null && ((_k : Dynamic).__nil__ == null || !(_k : Dynamic).__nil__)) {
                if (_k._walkReadyInOrder(_openParent, _tmp, _f)) {
                    return true;
                };
                _k = _k._next;
            };
        };
        return false;
    }
    @:keep
    static public function _addBytes( _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, _b:stdgo.GoInt64):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = _n;
        _n._bytes = (_n._bytes + (_b) : stdgo.GoInt64);
        while (_n != null && ((_n : Dynamic).__nil__ == null || !(_n : Dynamic).__nil__)) {
            _n._subtreeBytes = (_n._subtreeBytes + (_b) : stdgo.GoInt64);
            _n = _n._parent;
        };
    }
    @:keep
    static public function _setParent( _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, _parent:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = _n;
        if (_n == (_parent)) {
            throw stdgo.Go.toInterface(("setParent to self" : stdgo.GoString));
        };
        if (_n._parent == (_parent)) {
            return;
        };
        {
            var _parent = _n._parent;
            if (_parent != null && ((_parent : Dynamic).__nil__ == null || !(_parent : Dynamic).__nil__)) {
                if (_n._prev == null || (_n._prev : Dynamic).__nil__) {
                    _parent._kids = _n._next;
                } else {
                    _n._prev._next = _n._next;
                };
                if (_n._next != null && ((_n._next : Dynamic).__nil__ == null || !(_n._next : Dynamic).__nil__)) {
                    _n._next._prev = _n._prev;
                };
            };
        };
        _n._parent = _parent;
        if (_parent == null || (_parent : Dynamic).__nil__) {
            _n._next = null;
            _n._prev = null;
        } else {
            _n._next = _parent._kids;
            _n._prev = null;
            if (_n._next != null && ((_n._next : Dynamic).__nil__ == null || !(_n._next : Dynamic).__nil__)) {
                _n._next._prev = _n;
            };
            _parent._kids = _n;
        };
    }
}
