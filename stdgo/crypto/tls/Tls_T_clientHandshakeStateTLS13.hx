package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_clientHandshakeStateTLS13_static_extension) abstract T_clientHandshakeStateTLS13(stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13) from stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13 to stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13 {
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
    public var _serverHello(get, set) : T_serverHelloMsg;
    function get__serverHello():T_serverHelloMsg return this._serverHello;
    function set__serverHello(v:T_serverHelloMsg):T_serverHelloMsg {
        this._serverHello = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>);
        return v;
    }
    public var _hello(get, set) : T_clientHelloMsg;
    function get__hello():T_clientHelloMsg return this._hello;
    function set__hello(v:T_clientHelloMsg):T_clientHelloMsg {
        this._hello = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>);
        return v;
    }
    public var _ecdheKey(get, set) : stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey;
    function get__ecdheKey():stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey return this._ecdheKey;
    function set__ecdheKey(v:stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey):stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey {
        this._ecdheKey = (v : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return v;
    }
    public var _session(get, set) : SessionState;
    function get__session():SessionState return this._session;
    function set__session(v:SessionState):SessionState {
        this._session = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        return v;
    }
    public var _earlySecret(get, set) : Array<std.UInt>;
    function get__earlySecret():Array<std.UInt> return [for (i in this._earlySecret) i];
    function set__earlySecret(v:Array<std.UInt>):Array<std.UInt> {
        this._earlySecret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _binderKey(get, set) : Array<std.UInt>;
    function get__binderKey():Array<std.UInt> return [for (i in this._binderKey) i];
    function set__binderKey(v:Array<std.UInt>):Array<std.UInt> {
        this._binderKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _certReq(get, set) : T_certificateRequestMsgTLS13;
    function get__certReq():T_certificateRequestMsgTLS13 return this._certReq;
    function set__certReq(v:T_certificateRequestMsgTLS13):T_certificateRequestMsgTLS13 {
        this._certReq = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>);
        return v;
    }
    public var _usingPSK(get, set) : Bool;
    function get__usingPSK():Bool return this._usingPSK;
    function set__usingPSK(v:Bool):Bool {
        this._usingPSK = v;
        return v;
    }
    public var _sentDummyCCS(get, set) : Bool;
    function get__sentDummyCCS():Bool return this._sentDummyCCS;
    function set__sentDummyCCS(v:Bool):Bool {
        this._sentDummyCCS = v;
        return v;
    }
    public var _suite(get, set) : T_cipherSuiteTLS13;
    function get__suite():T_cipherSuiteTLS13 return this._suite;
    function set__suite(v:T_cipherSuiteTLS13):T_cipherSuiteTLS13 {
        this._suite = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>);
        return v;
    }
    public var _transcript(get, set) : stdgo._internal.hash.Hash_Hash.Hash;
    function get__transcript():stdgo._internal.hash.Hash_Hash.Hash return this._transcript;
    function set__transcript(v:stdgo._internal.hash.Hash_Hash.Hash):stdgo._internal.hash.Hash_Hash.Hash {
        this._transcript = v;
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
    public function new(?_c:Conn, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_serverHello:T_serverHelloMsg, ?_hello:T_clientHelloMsg, ?_ecdheKey:stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey, ?_session:SessionState, ?_earlySecret:Array<std.UInt>, ?_binderKey:Array<std.UInt>, ?_certReq:T_certificateRequestMsgTLS13, ?_usingPSK:Bool, ?_sentDummyCCS:Bool, ?_suite:T_cipherSuiteTLS13, ?_transcript:stdgo._internal.hash.Hash_Hash.Hash, ?_masterSecret:Array<std.UInt>, ?_trafficSecret:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13(
(_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>),
_ctx,
(_serverHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>),
(_hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>),
(_ecdheKey : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>),
(_session : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>),
([for (i in _earlySecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _binderKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_certReq : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13>),
_usingPSK,
_sentDummyCCS,
(_suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuiteTLS13.T_cipherSuiteTLS13>),
_transcript,
([for (i in _masterSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _trafficSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
