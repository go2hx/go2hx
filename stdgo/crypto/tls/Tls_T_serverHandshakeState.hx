package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_serverHandshakeState_static_extension) abstract T_serverHandshakeState(stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState) from stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState to stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState {
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
    public var _suite(get, set) : T_cipherSuite;
    function get__suite():T_cipherSuite return this._suite;
    function set__suite(v:T_cipherSuite):T_cipherSuite {
        this._suite = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>);
        return v;
    }
    public var _ecdheOk(get, set) : Bool;
    function get__ecdheOk():Bool return this._ecdheOk;
    function set__ecdheOk(v:Bool):Bool {
        this._ecdheOk = v;
        return v;
    }
    public var _ecSignOk(get, set) : Bool;
    function get__ecSignOk():Bool return this._ecSignOk;
    function set__ecSignOk(v:Bool):Bool {
        this._ecSignOk = v;
        return v;
    }
    public var _rsaDecryptOk(get, set) : Bool;
    function get__rsaDecryptOk():Bool return this._rsaDecryptOk;
    function set__rsaDecryptOk(v:Bool):Bool {
        this._rsaDecryptOk = v;
        return v;
    }
    public var _rsaSignOk(get, set) : Bool;
    function get__rsaSignOk():Bool return this._rsaSignOk;
    function set__rsaSignOk(v:Bool):Bool {
        this._rsaSignOk = v;
        return v;
    }
    public var _sessionState(get, set) : SessionState;
    function get__sessionState():SessionState return this._sessionState;
    function set__sessionState(v:SessionState):SessionState {
        this._sessionState = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        return v;
    }
    public var _finishedHash(get, set) : T_finishedHash;
    function get__finishedHash():T_finishedHash return this._finishedHash;
    function set__finishedHash(v:T_finishedHash):T_finishedHash {
        this._finishedHash = v;
        return v;
    }
    public var _masterSecret(get, set) : Array<std.UInt>;
    function get__masterSecret():Array<std.UInt> return [for (i in this._masterSecret) i];
    function set__masterSecret(v:Array<std.UInt>):Array<std.UInt> {
        this._masterSecret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cert(get, set) : Certificate;
    function get__cert():Certificate return this._cert;
    function set__cert(v:Certificate):Certificate {
        this._cert = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>);
        return v;
    }
    public function new(?_c:Conn, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_clientHello:T_clientHelloMsg, ?_hello:T_serverHelloMsg, ?_suite:T_cipherSuite, ?_ecdheOk:Bool, ?_ecSignOk:Bool, ?_rsaDecryptOk:Bool, ?_rsaSignOk:Bool, ?_sessionState:SessionState, ?_finishedHash:T_finishedHash, ?_masterSecret:Array<std.UInt>, ?_cert:Certificate) this = new stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState(
(_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>),
_ctx,
(_clientHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>),
(_hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>),
(_suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>),
_ecdheOk,
_ecSignOk,
_rsaDecryptOk,
_rsaSignOk,
(_sessionState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>),
_finishedHash,
([for (i in _masterSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_cert : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
