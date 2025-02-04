package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2sortPriorityNodeSiblings_asInterface) class T_http2sortPriorityNodeSiblings_static_extension {
    @:keep
    @:tdfield
    static public function less( _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings, _i:stdgo.GoInt, _k:stdgo.GoInt):Bool {
        @:recv var _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings = _z;
        var __0 = (((@:checkr _z[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._weight + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoFloat64), __1 = ((@:checkr _z[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._subtreeBytes : stdgo.GoFloat64);
var _bi = __1, _wi = __0;
        var __0 = (((@:checkr _z[(_k : stdgo.GoInt)] ?? throw "null pointer dereference")._weight + (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoFloat64), __1 = ((@:checkr _z[(_k : stdgo.GoInt)] ?? throw "null pointer dereference")._subtreeBytes : stdgo.GoFloat64);
var _bk = __1, _wk = __0;
        if (((_bi == (0 : stdgo.GoFloat64)) && (_bk == (0 : stdgo.GoFloat64)) : Bool)) {
            return (_wi >= _wk : Bool);
        };
        if (_bk == (0 : stdgo.GoFloat64)) {
            return false;
        };
        return ((_bi / _bk : stdgo.GoFloat64) <= (_wi / _wk : stdgo.GoFloat64) : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings, _i:stdgo.GoInt, _k:stdgo.GoInt):Void {
        @:recv var _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings = _z;
        {
            final __tmp__0 = _z[(_k : stdgo.GoInt)];
            final __tmp__1 = _z[(_i : stdgo.GoInt)];
            final __tmp__2 = _z;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _z;
            final __tmp__5 = (_k : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings):stdgo.GoInt {
        @:recv var _z:stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings = _z;
        return (_z.length);
    }
}
