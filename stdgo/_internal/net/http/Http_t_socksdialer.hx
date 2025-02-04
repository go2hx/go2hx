package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_socksdialer_static_extension.T_socksDialer_static_extension) class T_socksDialer {
    public var proxyDial : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var authMethods : stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod> = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod>);
    public var authenticate : (stdgo._internal.context.Context_context.Context, stdgo._internal.io.Io_readwriter.ReadWriter, stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod) -> stdgo.Error = null;
    public function new(?proxyDial:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?authMethods:stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod>, ?authenticate:(stdgo._internal.context.Context_context.Context, stdgo._internal.io.Io_readwriter.ReadWriter, stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod) -> stdgo.Error) {
        if (proxyDial != null) this.proxyDial = proxyDial;
        if (authMethods != null) this.authMethods = authMethods;
        if (authenticate != null) this.authenticate = authenticate;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_socksDialer(proxyDial, authMethods, authenticate);
    }
}
