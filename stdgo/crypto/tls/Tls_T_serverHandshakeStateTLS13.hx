package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_serverHandshakeStateTLS13_static_extension) abstract T_serverHandshakeStateTLS13(stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13) from stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13 to stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13 {
    public var _c(get, set) : Conn;
    function get__c():Conn return this._c;
    function set__c(v:Conn):Conn {
        this._c = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public var _clientHello(get, set) : T_clientHelloMsg;
    function get__clientHello():T_clientHelloMsg return this._clientHello;
    function set__clientHello(v:T_clientHelloMsg):T_clientHelloMsg {
        this._clientHello = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        return v;
    }
    public var _hello(get, set) : T_serverHelloMsg;
    function get__hello():T_serverHelloMsg return this._hello;
    function set__hello(v:T_serverHelloMsg):T_serverHelloMsg {
        this._hello = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        return v;
    }
    public var _sentDummyCCS(get, set) : Bool;
    function get__sentDummyCCS():Bool return this._sentDummyCCS;
    function set__sentDummyCCS(v:Bool):Bool {
        this._sentDummyCCS = v;
        return v;
    }
    public var _usingPSK(get, set) : Bool;
    function get__usingPSK():Bool return this._usingPSK;
    function set__usingPSK(v:Bool):Bool {
        this._usingPSK = v;
        return v;
    }
    public var _earlyData(get, set) : Bool;
    function get__earlyData():Bool return this._earlyData;
    function set__earlyData(v:Bool):Bool {
        this._earlyData = v;
        return v;
    }
    public var _suite(get, set) : T_cipherSuiteTLS13;
    function get__suite():T_cipherSuiteTLS13 return this._suite;
    function set__suite(v:T_cipherSuiteTLS13):T_cipherSuiteTLS13 {
        this._suite = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        return v;
    }
    public var _cert(get, set) : Certificate;
    function get__cert():Certificate return this._cert;
    function set__cert(v:Certificate):Certificate {
        this._cert = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        return v;
    }
    public var _sigAlg(get, set) : SignatureScheme;
    function get__sigAlg():SignatureScheme return this._sigAlg;
    function set__sigAlg(v:SignatureScheme):SignatureScheme {
        this._sigAlg = v;
        return v;
    }
    public var _earlySecret(get, set) : Array<std.UInt>;
    function get__earlySecret():Array<std.UInt> return [for (i in this._earlySecret) i];
    function set__earlySecret(v:Array<std.UInt>):Array<std.UInt> {
        this._earlySecret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _sharedKey(get, set) : Array<std.UInt>;
    function get__sharedKey():Array<std.UInt> return [for (i in this._sharedKey) i];
    function set__sharedKey(v:Array<std.UInt>):Array<std.UInt> {
        this._sharedKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _handshakeSecret(get, set) : Array<std.UInt>;
    function get__handshakeSecret():Array<std.UInt> return [for (i in this._handshakeSecret) i];
    function set__handshakeSecret(v:Array<std.UInt>):Array<std.UInt> {
        this._handshakeSecret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _masterSecret(get, set) : Array<std.UInt>;
    function get__masterSecret():Array<std.UInt> return [for (i in this._masterSecret) i];
    function set__masterSecret(v:Array<std.UInt>):Array<std.UInt> {
        this._masterSecret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _trafficSecret(get, set) : Array<std.UInt>;
    function get__trafficSecret():Array<std.UInt> return [for (i in this._trafficSecret) i];
    function set__trafficSecret(v:Array<std.UInt>):Array<std.UInt> {
        this._trafficSecret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _transcript(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__transcript():stdgo._internal.hash.Hash_Hash.Hash return this._transcript;
    function set__transcript(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._transcript = v;
        return v;
    }
    public var _clientFinished(get, set) : Array<std.UInt>;
    function get__clientFinished():Array<std.UInt> return [for (i in this._clientFinished) i];
    function set__clientFinished(v:Array<std.UInt>):Array<std.UInt> {
        this._clientFinished = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_c:Conn, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_clientHello:T_clientHelloMsg, ?_hello:T_serverHelloMsg, ?_sentDummyCCS:Bool, ?_usingPSK:Bool, ?_earlyData:Bool, ?_suite:T_cipherSuiteTLS13, ?_cert:Certificate, ?_sigAlg:SignatureScheme, ?_earlySecret:Array<std.UInt>, ?_sharedKey:Array<std.UInt>, ?_handshakeSecret:Array<std.UInt>, ?_masterSecret:Array<std.UInt>, ?_trafficSecret:Array<std.UInt>, ?_transcript:stdgo._internal.hash.Hash_Hash.Hash, ?_clientFinished:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13(
(_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>),
_ctx,
(_clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>),
(_hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>),
_sentDummyCCS,
_usingPSK,
_earlyData,
(_suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>),
(_cert : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>),
_sigAlg,
([for (i in _earlySecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _sharedKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _handshakeSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _masterSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _trafficSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
_transcript,
([for (i in _clientFinished) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
