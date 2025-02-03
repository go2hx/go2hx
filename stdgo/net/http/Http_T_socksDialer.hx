package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_socksDialer_static_extension) abstract T_socksDialer(stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer) from stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer to stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer {
    public var proxyDial(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_proxyDial():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.proxyDial(_0, _1, _2);
    function set_proxyDial(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.proxyDial = v;
        return v;
    }
    public var authMethods(get, set) : Array<T_socksAuthMethod>;
    function get_authMethods():Array<T_socksAuthMethod> return [for (i in this.authMethods) i];
    function set_authMethods(v:Array<T_socksAuthMethod>):Array<T_socksAuthMethod> {
        this.authMethods = ([for (i in v) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod>);
        return v;
    }
    public var authenticate(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error;
    function get_authenticate():(stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error return (_0, _1, _2) -> this.authenticate(_0, _1, _2);
    function set_authenticate(v:(stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error):(stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error {
        this.authenticate = v;
        return v;
    }
    public function new(?proxyDial:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?authMethods:Array<T_socksAuthMethod>, ?authenticate:(stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error) this = new stdgo._internal.net.http.Http_T_socksDialer.T_socksDialer(proxyDial, ([for (i in authMethods) i] : stdgo.Slice<stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod>), authenticate);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
