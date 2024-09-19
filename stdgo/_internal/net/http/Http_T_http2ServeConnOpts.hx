package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2ServeConnOpts_static_extension.T_http2ServeConnOpts_static_extension) class T_http2ServeConnOpts {
    public var context : stdgo._internal.context.Context_Context.Context = (null : stdgo._internal.context.Context_Context.Context);
    public var baseConfig : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
    public var handler : stdgo._internal.net.http.Http_Handler.Handler = (null : stdgo._internal.net.http.Http_Handler.Handler);
    public var upgradeRequest : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public var settings : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var sawClientPreface : Bool = false;
    public function new(?context:stdgo._internal.context.Context_Context.Context, ?baseConfig:stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>, ?handler:stdgo._internal.net.http.Http_Handler.Handler, ?upgradeRequest:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, ?settings:stdgo.Slice<stdgo.GoUInt8>, ?sawClientPreface:Bool) {
        if (context != null) this.context = context;
        if (baseConfig != null) this.baseConfig = baseConfig;
        if (handler != null) this.handler = handler;
        if (upgradeRequest != null) this.upgradeRequest = upgradeRequest;
        if (settings != null) this.settings = settings;
        if (sawClientPreface != null) this.sawClientPreface = sawClientPreface;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2ServeConnOpts(context, baseConfig, handler, upgradeRequest, settings, sawClientPreface);
    }
}
