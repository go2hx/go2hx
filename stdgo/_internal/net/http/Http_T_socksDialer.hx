package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_socksDialer_static_extension.T_socksDialer_static_extension) class T_socksDialer {
    public var _cmd : stdgo._internal.net.http.Http_T_socksCommand.T_socksCommand = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_T_socksCommand.T_socksCommand);
    public var _proxyNetwork : stdgo.GoString = "";
    public var _proxyAddress : stdgo.GoString = "";
    public var proxyDial : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } = null;
    public var authMethods : stdgo.Slice<stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod> = (null : stdgo.Slice<stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod>);
    public var authenticate : (stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error = null;
    public function new(?_cmd:stdgo._internal.net.http.Http_T_socksCommand.T_socksCommand, ?_proxyNetwork:stdgo.GoString, ?_proxyAddress:stdgo.GoString, ?proxyDial:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?authMethods:stdgo.Slice<stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod>, ?authenticate:(stdgo._internal.context.Context_Context.Context, stdgo._internal.io.Io_ReadWriter.ReadWriter, stdgo._internal.net.http.Http_T_socksAuthMethod.T_socksAuthMethod) -> stdgo.Error) {
        if (_cmd != null) this._cmd = _cmd;
        if (_proxyNetwork != null) this._proxyNetwork = _proxyNetwork;
        if (_proxyAddress != null) this._proxyAddress = _proxyAddress;
        if (proxyDial != null) this.proxyDial = proxyDial;
        if (authMethods != null) this.authMethods = authMethods;
        if (authenticate != null) this.authenticate = authenticate;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_socksDialer(_cmd, _proxyNetwork, _proxyAddress, proxyDial, authMethods, authenticate);
    }
}
