package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_wantConnQueue_asInterface) class T_wantConnQueue_static_extension {
    @:keep
    @:tdfield
    static public function _cleanFront( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        var _cleaned = false;
        while (true) {
            var _w = @:check2r _q._peekFront();
            if (((_w == null || (_w : Dynamic).__nil__) || @:check2r _w._waiting() : Bool)) {
                return _cleaned;
            };
            @:check2r _q._popFront();
            _cleaned = true;
        };
    }
    @:keep
    @:tdfield
    static public function _peekFront( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        if (((@:checkr _q ?? throw "null pointer dereference")._headPos < ((@:checkr _q ?? throw "null pointer dereference")._head.length) : Bool)) {
            return (@:checkr _q ?? throw "null pointer dereference")._head[((@:checkr _q ?? throw "null pointer dereference")._headPos : stdgo.GoInt)];
        };
        if ((((@:checkr _q ?? throw "null pointer dereference")._tail.length) > (0 : stdgo.GoInt) : Bool)) {
            return (@:checkr _q ?? throw "null pointer dereference")._tail[(0 : stdgo.GoInt)];
        };
        return null;
    }
    @:keep
    @:tdfield
    static public function _popFront( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn> {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        if (((@:checkr _q ?? throw "null pointer dereference")._headPos >= ((@:checkr _q ?? throw "null pointer dereference")._head.length) : Bool)) {
            if (((@:checkr _q ?? throw "null pointer dereference")._tail.length) == ((0 : stdgo.GoInt))) {
                return null;
            };
            {
                final __tmp__0 = (@:checkr _q ?? throw "null pointer dereference")._tail;
                final __tmp__1 = (0 : stdgo.GoInt);
                final __tmp__2 = ((@:checkr _q ?? throw "null pointer dereference")._head.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>);
                (@:checkr _q ?? throw "null pointer dereference")._head = __tmp__0;
                (@:checkr _q ?? throw "null pointer dereference")._headPos = __tmp__1;
                (@:checkr _q ?? throw "null pointer dereference")._tail = __tmp__2;
            };
        };
        var _w = (@:checkr _q ?? throw "null pointer dereference")._head[((@:checkr _q ?? throw "null pointer dereference")._headPos : stdgo.GoInt)];
        (@:checkr _q ?? throw "null pointer dereference")._head[((@:checkr _q ?? throw "null pointer dereference")._headPos : stdgo.GoInt)] = null;
        (@:checkr _q ?? throw "null pointer dereference")._headPos++;
        return _w;
    }
    @:keep
    @:tdfield
    static public function _pushBack( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>, _w:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        (@:checkr _q ?? throw "null pointer dereference")._tail = ((@:checkr _q ?? throw "null pointer dereference")._tail.__append__(_w));
    }
    @:keep
    @:tdfield
    static public function _len( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue>):stdgo.GoInt {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_wantConnQueue.T_wantConnQueue> = _q;
        return ((((@:checkr _q ?? throw "null pointer dereference")._head.length) - (@:checkr _q ?? throw "null pointer dereference")._headPos : stdgo.GoInt) + ((@:checkr _q ?? throw "null pointer dereference")._tail.length) : stdgo.GoInt);
    }
}
