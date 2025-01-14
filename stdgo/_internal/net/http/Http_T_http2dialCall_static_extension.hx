package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2dialCall_asInterface) class T_http2dialCall_static_extension {
    @:keep
    @:tdfield
    static public function _dial( _c:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall>, _ctx:stdgo._internal.context.Context_Context.Context, _addr:stdgo.GoString):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_T_http2dialCall.T_http2dialCall> = _c;
        {};
        {
            var __tmp__ = @:check2r (@:checkr (@:checkr _c ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._t._dialClientConn(_ctx, _addr?.__copy__(), false);
            (@:checkr _c ?? throw "null pointer dereference")._res = @:tmpset0 __tmp__._0;
            (@:checkr _c ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
        };
        @:check2 (@:checkr (@:checkr _c ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._mu.lock();
        if ((@:checkr (@:checkr _c ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._dialing != null) (@:checkr (@:checkr _c ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._dialing.remove(_addr);
        if ((@:checkr _c ?? throw "null pointer dereference")._err == null) {
            @:check2r (@:checkr _c ?? throw "null pointer dereference")._p._addConnLocked(_addr?.__copy__(), (@:checkr _c ?? throw "null pointer dereference")._res);
        };
        @:check2 (@:checkr (@:checkr _c ?? throw "null pointer dereference")._p ?? throw "null pointer dereference")._mu.unlock();
        if ((@:checkr _c ?? throw "null pointer dereference")._done != null) (@:checkr _c ?? throw "null pointer dereference")._done.__close__();
    }
}
