package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_wantConnQueue_asInterface) class T_wantConnQueue_static_extension {
    @:keep
    static public function _cleanFront( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        var _cleaned = false;
        while (true) {
            var _w = _q._peekFront();
            if (((_w == null || (_w : Dynamic).__nil__) || _w._waiting() : Bool)) {
                return _cleaned;
            };
            _q._popFront();
            _cleaned = true;
        };
    }
    @:keep
    static public function _peekFront( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        if ((_q._headPos < (_q._head.length) : Bool)) {
            return _q._head[(_q._headPos : stdgo.GoInt)];
        };
        if (((_q._tail.length) > (0 : stdgo.GoInt) : Bool)) {
            return _q._tail[(0 : stdgo.GoInt)];
        };
        return null;
    }
    @:keep
    static public function _popFront( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        if ((_q._headPos >= (_q._head.length) : Bool)) {
            if ((_q._tail.length) == ((0 : stdgo.GoInt))) {
                return null;
            };
            {
                final __tmp__0 = _q._tail;
                final __tmp__1 = (0 : stdgo.GoInt);
                final __tmp__2 = (_q._head.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>);
                _q._head = __tmp__0;
                _q._headPos = __tmp__1;
                _q._tail = __tmp__2;
            };
        };
        var _w = _q._head[(_q._headPos : stdgo.GoInt)];
        _q._head[(_q._headPos : stdgo.GoInt)] = null;
        _q._headPos++;
        return _w;
    }
    @:keep
    static public function _pushBack( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>, _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        _q._tail = (_q._tail.__append__(_w));
    }
    @:keep
    static public function _len( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):stdgo.GoInt {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        return (((_q._head.length) - _q._headPos : stdgo.GoInt) + (_q._tail.length) : stdgo.GoInt);
    }
}
