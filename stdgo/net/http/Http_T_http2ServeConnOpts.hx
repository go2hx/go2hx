package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2ServeConnOpts_static_extension) abstract T_http2ServeConnOpts(stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts) from stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts to stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts {
    public var context(get, set) : stdgo._internal.context.Context_Context.Context;
    function get_context():stdgo._internal.context.Context_Context.Context return this.context;
    function set_context(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this.context = v;
        return v;
    }
    public var baseConfig(get, set) : Server;
    function get_baseConfig():Server return this.baseConfig;
    function set_baseConfig(v:Server):Server {
        this.baseConfig = (v : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>);
        return v;
    }
    public var handler(get, set) : Handler;
    function get_handler():Handler return this.handler;
    function set_handler(v:Handler):Handler {
        this.handler = v;
        return v;
    }
    public var upgradeRequest(get, set) : Request;
    function get_upgradeRequest():Request return this.upgradeRequest;
    function set_upgradeRequest(v:Request):Request {
        this.upgradeRequest = (v : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return v;
    }
    public var settings(get, set) : Array<std.UInt>;
    function get_settings():Array<std.UInt> return [for (i in this.settings) i];
    function set_settings(v:Array<std.UInt>):Array<std.UInt> {
        this.settings = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var sawClientPreface(get, set) : Bool;
    function get_sawClientPreface():Bool return this.sawClientPreface;
    function set_sawClientPreface(v:Bool):Bool {
        this.sawClientPreface = v;
        return v;
    }
    public function new(?context:stdgo._internal.context.Context_Context.Context, ?baseConfig:Server, ?handler:Handler, ?upgradeRequest:Request, ?settings:Array<std.UInt>, ?sawClientPreface:Bool) this = new stdgo._internal.net.http.Http_T_http2ServeConnOpts.T_http2ServeConnOpts(context, (baseConfig : stdgo.Ref<stdgo._internal.net.http.Http_Server.Server>), handler, (upgradeRequest : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), ([for (i in settings) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), sawClientPreface);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
