package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2serverInternalState_asInterface) class T_http2serverInternalState_static_extension {
    @:keep
    @:tdfield
    static public function _startGracefulShutdown( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState> = _s;
        if ((_s == null || (_s : Dynamic).__nil__)) {
            return;
        };
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        for (_sc => _ in (@:checkr _s ?? throw "null pointer dereference")._activeConns) {
            @:check2r _sc._startGracefulShutdown();
        };
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _unregisterConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState>, _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState> = _s;
        if ((_s == null || (_s : Dynamic).__nil__)) {
            return;
        };
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        if ((@:checkr _s ?? throw "null pointer dereference")._activeConns != null) (@:checkr _s ?? throw "null pointer dereference")._activeConns.remove(_sc);
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _registerConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState>, _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState> = _s;
        if ((_s == null || (_s : Dynamic).__nil__)) {
            return;
        };
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.lock();
        (@:checkr _s ?? throw "null pointer dereference")._activeConns[_sc] = (new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError);
        @:check2 (@:checkr _s ?? throw "null pointer dereference")._mu.unlock();
    }
}
