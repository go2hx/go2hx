package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2writeQueue_asInterface) class T_http2writeQueue_static_extension {
    @:keep
    @:tdfield
    static public function _consume( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>, _n:stdgo.GoInt32):{ var _0 : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> = _q;
        if (((@:checkr _q ?? throw "null pointer dereference")._s.length) == ((0 : stdgo.GoInt))) {
            return { _0 : (new stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest), _1 : false };
        };
        var __tmp__ = (@:checkr _q ?? throw "null pointer dereference")._s[(0 : stdgo.GoInt)].consume(_n), _consumed:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = __tmp__._0, _rest:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest = __tmp__._1, _numresult:stdgo.GoInt = __tmp__._2;
        {
            final __value__ = _numresult;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return { _0 : (new stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest), _1 : false };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                @:check2r _q._shift();
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                (@:checkr _q ?? throw "null pointer dereference")._s[(0 : stdgo.GoInt)] = _rest?.__copy__();
            };
        };
        return { _0 : _consumed?.__copy__(), _1 : true };
    }
    @:keep
    @:tdfield
    static public function _shift( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>):stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> = _q;
        if (((@:checkr _q ?? throw "null pointer dereference")._s.length) == ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("invalid use of queue" : stdgo.GoString));
        };
        var _wr = ((@:checkr _q ?? throw "null pointer dereference")._s[(0 : stdgo.GoInt)] : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest);
        (@:checkr _q ?? throw "null pointer dereference")._s.__copyTo__(((@:checkr _q ?? throw "null pointer dereference")._s.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>));
        (@:checkr _q ?? throw "null pointer dereference")._s[(((@:checkr _q ?? throw "null pointer dereference")._s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (new stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest);
        (@:checkr _q ?? throw "null pointer dereference")._s = ((@:checkr _q ?? throw "null pointer dereference")._s.__slice__(0, (((@:checkr _q ?? throw "null pointer dereference")._s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest>);
        return _wr?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _push( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>, _wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> = _q;
        (@:checkr _q ?? throw "null pointer dereference")._s = ((@:checkr _q ?? throw "null pointer dereference")._s.__append__(_wr?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function _empty( _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_T_http2writeQueue.T_http2writeQueue> = _q;
        return ((@:checkr _q ?? throw "null pointer dereference")._s.length) == ((0 : stdgo.GoInt));
    }
}
