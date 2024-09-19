package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2serverInternalState_asInterface) class T_http2serverInternalState_static_extension {
    @:keep
    static public function _startGracefulShutdown( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState> = _s;
        if (_s == null || (_s : Dynamic).__nil__) {
            return;
        };
        _s._mu.lock();
        for (_sc => _ in _s._activeConns) {
            _sc._startGracefulShutdown();
        };
        _s._mu.unlock();
    }
    @:keep
    static public function _unregisterConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState>, _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState> = _s;
        if (_s == null || (_s : Dynamic).__nil__) {
            return;
        };
        _s._mu.lock();
        if (_s._activeConns != null) _s._activeConns.remove(_sc);
        _s._mu.unlock();
    }
    @:keep
    static public function _registerConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState>, _sc:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverConn.T_http2serverConn>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_T_http2serverInternalState.T_http2serverInternalState> = _s;
        if (_s == null || (_s : Dynamic).__nil__) {
            return;
        };
        _s._mu.lock();
        _s._activeConns[_sc] = (new stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_T_http2goAwayFlowError.T_http2goAwayFlowError);
        _s._mu.unlock();
    }
}
