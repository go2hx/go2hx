package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ServeConnOpts_asInterface) class T_http2ServeConnOpts_static_extension {
    @:keep
    static public function _handler( _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):stdgo._internal.net.http.Http_Handler.Handler {
        @:recv var _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts> = _o;
        if ((_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__))) {
            if (_o.handler != null) {
                return _o.handler;
            };
            if (((_o.baseConfig != null && ((_o.baseConfig : Dynamic).__nil__ == null || !(_o.baseConfig : Dynamic).__nil__)) && (_o.baseConfig.handler != null) : Bool)) {
                return _o.baseConfig.handler;
            };
        };
        return stdgo.Go.asInterface(stdgo._internal.net.http.Http_defaultServeMux.defaultServeMux);
    }
    @:keep
    static public function _baseConfig( _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> {
        @:recv var _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts> = _o;
        if (((_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__)) && (_o.baseConfig != null && ((_o.baseConfig : Dynamic).__nil__ == null || !(_o.baseConfig : Dynamic).__nil__)) : Bool)) {
            return _o.baseConfig;
        };
        return (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
    }
    @:keep
    static public function _context( _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):stdgo._internal.context.Context_Context.Context {
        @:recv var _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts> = _o;
        if (((_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__)) && (_o.context != null) : Bool)) {
            return _o.context;
        };
        return stdgo._internal.context.Context_background.background();
    }
}
