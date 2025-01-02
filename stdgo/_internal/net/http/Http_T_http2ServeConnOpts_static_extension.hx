package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ServeConnOpts_asInterface) class T_http2ServeConnOpts_static_extension {
    @:keep
    @:tdfield
    static public function _handler( _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):stdgo._internal.net.http.Http_Handler.Handler {
        @:recv var _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts> = _o;
        if ((_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__))) {
            if ((@:checkr _o ?? throw "null pointer dereference").handler != null) {
                return (@:checkr _o ?? throw "null pointer dereference").handler;
            };
            if ((((@:checkr _o ?? throw "null pointer dereference").baseConfig != null && (((@:checkr _o ?? throw "null pointer dereference").baseConfig : Dynamic).__nil__ == null || !((@:checkr _o ?? throw "null pointer dereference").baseConfig : Dynamic).__nil__)) && ((@:checkr (@:checkr _o ?? throw "null pointer dereference").baseConfig ?? throw "null pointer dereference").handler != null) : Bool)) {
                return (@:checkr (@:checkr _o ?? throw "null pointer dereference").baseConfig ?? throw "null pointer dereference").handler;
            };
        };
        return stdgo.Go.asInterface(stdgo._internal.net.http.Http_defaultServeMux.defaultServeMux);
    }
    @:keep
    @:tdfield
    static public function _baseConfig( _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> {
        @:recv var _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts> = _o;
        if (((_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__)) && ((@:checkr _o ?? throw "null pointer dereference").baseConfig != null && (((@:checkr _o ?? throw "null pointer dereference").baseConfig : Dynamic).__nil__ == null || !((@:checkr _o ?? throw "null pointer dereference").baseConfig : Dynamic).__nil__)) : Bool)) {
            return (@:checkr _o ?? throw "null pointer dereference").baseConfig;
        };
        return (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_Server.Server)) : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
    }
    @:keep
    @:tdfield
    static public function _context( _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts>):stdgo._internal.context.Context_Context.Context {
        @:recv var _o:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts> = _o;
        if (((_o != null && ((_o : Dynamic).__nil__ == null || !(_o : Dynamic).__nil__)) && ((@:checkr _o ?? throw "null pointer dereference").context != null) : Bool)) {
            return (@:checkr _o ?? throw "null pointer dereference").context;
        };
        return stdgo._internal.context.Context_background.background();
    }
}
