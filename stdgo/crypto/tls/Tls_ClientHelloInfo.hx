package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.ClientHelloInfo_static_extension) abstract ClientHelloInfo(stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo) from stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo to stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo {
    public var cipherSuites(get, set) : Array<std.UInt>;
    function get_cipherSuites():Array<std.UInt> return [for (i in this.cipherSuites) i];
    function set_cipherSuites(v:Array<std.UInt>):Array<std.UInt> {
        this.cipherSuites = ([for (i in v) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return v;
    }
    public var serverName(get, set) : String;
    function get_serverName():String return this.serverName;
    function set_serverName(v:String):String {
        this.serverName = (v : stdgo.GoString);
        return v;
    }
    public var supportedCurves(get, set) : Array<CurveID>;
    function get_supportedCurves():Array<CurveID> return [for (i in this.supportedCurves) i];
    function set_supportedCurves(v:Array<CurveID>):Array<CurveID> {
        this.supportedCurves = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>);
        return v;
    }
    public var supportedPoints(get, set) : Array<std.UInt>;
    function get_supportedPoints():Array<std.UInt> return [for (i in this.supportedPoints) i];
    function set_supportedPoints(v:Array<std.UInt>):Array<std.UInt> {
        this.supportedPoints = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signatureSchemes(get, set) : Array<SignatureScheme>;
    function get_signatureSchemes():Array<SignatureScheme> return [for (i in this.signatureSchemes) i];
    function set_signatureSchemes(v:Array<SignatureScheme>):Array<SignatureScheme> {
        this.signatureSchemes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        return v;
    }
    public var supportedProtos(get, set) : Array<String>;
    function get_supportedProtos():Array<String> return [for (i in this.supportedProtos) i];
    function set_supportedProtos(v:Array<String>):Array<String> {
        this.supportedProtos = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var supportedVersions(get, set) : Array<std.UInt>;
    function get_supportedVersions():Array<std.UInt> return [for (i in this.supportedVersions) i];
    function set_supportedVersions(v:Array<std.UInt>):Array<std.UInt> {
        this.supportedVersions = ([for (i in v) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return v;
    }
    public var conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get_conn():stdgo._internal.net.Net_Conn.Conn return this.conn;
    function set_conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this.conn = v;
        return v;
    }
    public var _config(get, set) : Config;
    function get__config():Config return this._config;
    function set__config(v:Config):Config {
        this._config = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public function new(?cipherSuites:Array<std.UInt>, ?serverName:String, ?supportedCurves:Array<CurveID>, ?supportedPoints:Array<std.UInt>, ?signatureSchemes:Array<SignatureScheme>, ?supportedProtos:Array<String>, ?supportedVersions:Array<std.UInt>, ?conn:stdgo._internal.net.Net_Conn.Conn, ?_config:Config, ?_ctx:stdgo._internal.context.Context_Context.Context) this = new stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo(([for (i in cipherSuites) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>), (serverName : stdgo.GoString), ([for (i in supportedCurves) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>), ([for (i in supportedPoints) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in signatureSchemes) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>), ([for (i in supportedProtos) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), ([for (i in supportedVersions) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>), conn, (_config : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>), _ctx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
