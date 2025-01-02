package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2priorityNode_asInterface) class T_http2priorityNode_static_extension {
    @:keep
    @:tdfield
    static public function _walkReadyInOrder( _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, _openParent:Bool, _tmp:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>>, _f:(stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, Bool) -> Bool):Bool {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = _n;
        if ((!@:check2 (@:checkr _n ?? throw "null pointer dereference")._q._empty() && _f(_n, _openParent) : Bool)) {
            return true;
        };
        if (((@:checkr _n ?? throw "null pointer dereference")._kids == null || ((@:checkr _n ?? throw "null pointer dereference")._kids : Dynamic).__nil__)) {
            return false;
        };
        if ((@:checkr _n ?? throw "null pointer dereference")._id != ((0u32 : stdgo.GoUInt32))) {
            _openParent = (_openParent || ((@:checkr _n ?? throw "null pointer dereference")._state == (0 : stdgo._internal.net.http.Http_T_http2priorityNodeState.T_http2priorityNodeState)) : Bool);
        };
        var _w = ((@:checkr (@:checkr _n ?? throw "null pointer dereference")._kids ?? throw "null pointer dereference")._weight : stdgo.GoUInt8);
        var _needSort = (false : Bool);
        {
            var _k = (@:checkr (@:checkr _n ?? throw "null pointer dereference")._kids ?? throw "null pointer dereference")._next;
            while ((_k != null && ((_k : Dynamic).__nil__ == null || !(_k : Dynamic).__nil__))) {
                if ((@:checkr _k ?? throw "null pointer dereference")._weight != (_w)) {
                    _needSort = true;
                    break;
                };
                _k = (@:checkr _k ?? throw "null pointer dereference")._next;
            };
        };
        if (!_needSort) {
            {
                var _k = (@:checkr _n ?? throw "null pointer dereference")._kids;
                while ((_k != null && ((_k : Dynamic).__nil__ == null || !(_k : Dynamic).__nil__))) {
                    if (@:check2r _k._walkReadyInOrder(_openParent, _tmp, _f)) {
                        return true;
                    };
                    _k = (@:checkr _k ?? throw "null pointer dereference")._next;
                };
            };
            return false;
        };
        (_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).__setData__((((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>));
        while (((@:checkr _n ?? throw "null pointer dereference")._kids != null && (((@:checkr _n ?? throw "null pointer dereference")._kids : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference")._kids : Dynamic).__nil__))) {
            (_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).__setData__(((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).__append__((@:checkr _n ?? throw "null pointer dereference")._kids)));
            @:check2r (@:checkr _n ?? throw "null pointer dereference")._kids._setParent(null);
        };
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>) : stdgo._internal.net.http.Http_T_http2sortPriorityNodeSiblings.T_http2sortPriorityNodeSiblings)));
        {
            var _i = (((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>).length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                @:check2r ((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>>))[(_i : stdgo.GoInt)]._setParent(_n);
                _i--;
            };
        };
        {
            var _k = (@:checkr _n ?? throw "null pointer dereference")._kids;
            while ((_k != null && ((_k : Dynamic).__nil__ == null || !(_k : Dynamic).__nil__))) {
                if (@:check2r _k._walkReadyInOrder(_openParent, _tmp, _f)) {
                    return true;
                };
                _k = (@:checkr _k ?? throw "null pointer dereference")._next;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _addBytes( _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, _b:stdgo.GoInt64):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = _n;
        (@:checkr _n ?? throw "null pointer dereference")._bytes = ((@:checkr _n ?? throw "null pointer dereference")._bytes + (_b) : stdgo.GoInt64);
        while ((_n != null && ((_n : Dynamic).__nil__ == null || !(_n : Dynamic).__nil__))) {
            (@:checkr _n ?? throw "null pointer dereference")._subtreeBytes = ((@:checkr _n ?? throw "null pointer dereference")._subtreeBytes + (_b) : stdgo.GoInt64);
            _n = (@:checkr _n ?? throw "null pointer dereference")._parent;
        };
    }
    @:keep
    @:tdfield
    static public function _setParent( _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>, _parent:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityNode.T_http2priorityNode> = _n;
        if (_n == (_parent)) {
            throw stdgo.Go.toInterface(("setParent to self" : stdgo.GoString));
        };
        if ((@:checkr _n ?? throw "null pointer dereference")._parent == (_parent)) {
            return;
        };
        {
            var _parent = (@:checkr _n ?? throw "null pointer dereference")._parent;
            if ((_parent != null && ((_parent : Dynamic).__nil__ == null || !(_parent : Dynamic).__nil__))) {
                if (((@:checkr _n ?? throw "null pointer dereference")._prev == null || ((@:checkr _n ?? throw "null pointer dereference")._prev : Dynamic).__nil__)) {
                    (@:checkr _parent ?? throw "null pointer dereference")._kids = (@:checkr _n ?? throw "null pointer dereference")._next;
                } else {
                    (@:checkr (@:checkr _n ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._next = (@:checkr _n ?? throw "null pointer dereference")._next;
                };
                if (((@:checkr _n ?? throw "null pointer dereference")._next != null && (((@:checkr _n ?? throw "null pointer dereference")._next : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference")._next : Dynamic).__nil__))) {
                    (@:checkr (@:checkr _n ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._prev = (@:checkr _n ?? throw "null pointer dereference")._prev;
                };
            };
        };
        (@:checkr _n ?? throw "null pointer dereference")._parent = _parent;
        if ((_parent == null || (_parent : Dynamic).__nil__)) {
            (@:checkr _n ?? throw "null pointer dereference")._next = null;
            (@:checkr _n ?? throw "null pointer dereference")._prev = null;
        } else {
            (@:checkr _n ?? throw "null pointer dereference")._next = (@:checkr _parent ?? throw "null pointer dereference")._kids;
            (@:checkr _n ?? throw "null pointer dereference")._prev = null;
            if (((@:checkr _n ?? throw "null pointer dereference")._next != null && (((@:checkr _n ?? throw "null pointer dereference")._next : Dynamic).__nil__ == null || !((@:checkr _n ?? throw "null pointer dereference")._next : Dynamic).__nil__))) {
                (@:checkr (@:checkr _n ?? throw "null pointer dereference")._next ?? throw "null pointer dereference")._prev = _n;
            };
            (@:checkr _parent ?? throw "null pointer dereference")._kids = _n;
        };
    }
}
