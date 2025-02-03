package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_clientHandshakeState_static_extension) abstract T_clientHandshakeState(stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState) from stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState to stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState {
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
    public var _suite(get, set) : T_cipherSuite;
    function get__suite():T_cipherSuite return this._suite;
    function set__suite(v:T_cipherSuite):T_cipherSuite {
        this._suite = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>);
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
    public var _session(get, set) : SessionState;
    function get__session():SessionState return this._session;
    function set__session(v:SessionState):SessionState {
        this._session = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>);
        return v;
    }
    public var _ticket(get, set) : Array<std.UInt>;
    function get__ticket():Array<std.UInt> return [for (i in this._ticket) i];
    function set__ticket(v:Array<std.UInt>):Array<std.UInt> {
        this._ticket = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_c:Conn, ?_ctx:stdgo._internal.context.Context_Context.Context, ?_serverHello:T_serverHelloMsg, ?_hello:T_clientHelloMsg, ?_suite:T_cipherSuite, ?_finishedHash:T_finishedHash, ?_masterSecret:Array<std.UInt>, ?_session:SessionState, ?_ticket:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState((_c : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _ctx, (_serverHello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg>), (_hello : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg>), (_suite : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>), _finishedHash, ([for (i in _masterSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_session : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>), ([for (i in _ticket) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
