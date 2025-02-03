package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_clientHelloMsg_static_extension) abstract T_clientHelloMsg(stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg) from stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg to stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _vers(get, set) : std.UInt;
    function get__vers():std.UInt return this._vers;
    function set__vers(v:std.UInt):std.UInt {
        this._vers = (v : stdgo.GoUInt16);
        return v;
    }
    public var _random(get, set) : Array<std.UInt>;
    function get__random():Array<std.UInt> return [for (i in this._random) i];
    function set__random(v:Array<std.UInt>):Array<std.UInt> {
        this._random = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _sessionId(get, set) : Array<std.UInt>;
    function get__sessionId():Array<std.UInt> return [for (i in this._sessionId) i];
    function set__sessionId(v:Array<std.UInt>):Array<std.UInt> {
        this._sessionId = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cipherSuites(get, set) : Array<std.UInt>;
    function get__cipherSuites():Array<std.UInt> return [for (i in this._cipherSuites) i];
    function set__cipherSuites(v:Array<std.UInt>):Array<std.UInt> {
        this._cipherSuites = ([for (i in v) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return v;
    }
    public var _compressionMethods(get, set) : Array<std.UInt>;
    function get__compressionMethods():Array<std.UInt> return [for (i in this._compressionMethods) i];
    function set__compressionMethods(v:Array<std.UInt>):Array<std.UInt> {
        this._compressionMethods = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _serverName(get, set) : String;
    function get__serverName():String return this._serverName;
    function set__serverName(v:String):String {
        this._serverName = (v : stdgo.GoString);
        return v;
    }
    public var _ocspStapling(get, set) : Bool;
    function get__ocspStapling():Bool return this._ocspStapling;
    function set__ocspStapling(v:Bool):Bool {
        this._ocspStapling = v;
        return v;
    }
    public var _supportedCurves(get, set) : Array<CurveID>;
    function get__supportedCurves():Array<CurveID> return [for (i in this._supportedCurves) i];
    function set__supportedCurves(v:Array<CurveID>):Array<CurveID> {
        this._supportedCurves = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>);
        return v;
    }
    public var _supportedPoints(get, set) : Array<std.UInt>;
    function get__supportedPoints():Array<std.UInt> return [for (i in this._supportedPoints) i];
    function set__supportedPoints(v:Array<std.UInt>):Array<std.UInt> {
        this._supportedPoints = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ticketSupported(get, set) : Bool;
    function get__ticketSupported():Bool return this._ticketSupported;
    function set__ticketSupported(v:Bool):Bool {
        this._ticketSupported = v;
        return v;
    }
    public var _sessionTicket(get, set) : Array<std.UInt>;
    function get__sessionTicket():Array<std.UInt> return [for (i in this._sessionTicket) i];
    function set__sessionTicket(v:Array<std.UInt>):Array<std.UInt> {
        this._sessionTicket = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _supportedSignatureAlgorithms(get, set) : Array<SignatureScheme>;
    function get__supportedSignatureAlgorithms():Array<SignatureScheme> return [for (i in this._supportedSignatureAlgorithms) i];
    function set__supportedSignatureAlgorithms(v:Array<SignatureScheme>):Array<SignatureScheme> {
        this._supportedSignatureAlgorithms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        return v;
    }
    public var _supportedSignatureAlgorithmsCert(get, set) : Array<SignatureScheme>;
    function get__supportedSignatureAlgorithmsCert():Array<SignatureScheme> return [for (i in this._supportedSignatureAlgorithmsCert) i];
    function set__supportedSignatureAlgorithmsCert(v:Array<SignatureScheme>):Array<SignatureScheme> {
        this._supportedSignatureAlgorithmsCert = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        return v;
    }
    public var _secureRenegotiationSupported(get, set) : Bool;
    function get__secureRenegotiationSupported():Bool return this._secureRenegotiationSupported;
    function set__secureRenegotiationSupported(v:Bool):Bool {
        this._secureRenegotiationSupported = v;
        return v;
    }
    public var _secureRenegotiation(get, set) : Array<std.UInt>;
    function get__secureRenegotiation():Array<std.UInt> return [for (i in this._secureRenegotiation) i];
    function set__secureRenegotiation(v:Array<std.UInt>):Array<std.UInt> {
        this._secureRenegotiation = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _extendedMasterSecret(get, set) : Bool;
    function get__extendedMasterSecret():Bool return this._extendedMasterSecret;
    function set__extendedMasterSecret(v:Bool):Bool {
        this._extendedMasterSecret = v;
        return v;
    }
    public var _alpnProtocols(get, set) : Array<String>;
    function get__alpnProtocols():Array<String> return [for (i in this._alpnProtocols) i];
    function set__alpnProtocols(v:Array<String>):Array<String> {
        this._alpnProtocols = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _scts(get, set) : Bool;
    function get__scts():Bool return this._scts;
    function set__scts(v:Bool):Bool {
        this._scts = v;
        return v;
    }
    public var _supportedVersions(get, set) : Array<std.UInt>;
    function get__supportedVersions():Array<std.UInt> return [for (i in this._supportedVersions) i];
    function set__supportedVersions(v:Array<std.UInt>):Array<std.UInt> {
        this._supportedVersions = ([for (i in v) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>);
        return v;
    }
    public var _cookie(get, set) : Array<std.UInt>;
    function get__cookie():Array<std.UInt> return [for (i in this._cookie) i];
    function set__cookie(v:Array<std.UInt>):Array<std.UInt> {
        this._cookie = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _keyShares(get, set) : Array<T_keyShare>;
    function get__keyShares():Array<T_keyShare> return [for (i in this._keyShares) i];
    function set__keyShares(v:Array<T_keyShare>):Array<T_keyShare> {
        this._keyShares = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>);
        return v;
    }
    public var _earlyData(get, set) : Bool;
    function get__earlyData():Bool return this._earlyData;
    function set__earlyData(v:Bool):Bool {
        this._earlyData = v;
        return v;
    }
    public var _pskModes(get, set) : Array<std.UInt>;
    function get__pskModes():Array<std.UInt> return [for (i in this._pskModes) i];
    function set__pskModes(v:Array<std.UInt>):Array<std.UInt> {
        this._pskModes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _pskIdentities(get, set) : Array<T_pskIdentity>;
    function get__pskIdentities():Array<T_pskIdentity> return [for (i in this._pskIdentities) i];
    function set__pskIdentities(v:Array<T_pskIdentity>):Array<T_pskIdentity> {
        this._pskIdentities = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity>);
        return v;
    }
    public var _pskBinders(get, set) : Array<Array<std.UInt>>;
    function get__pskBinders():Array<Array<std.UInt>> return [for (i in this._pskBinders) [for (i in i) i]];
    function set__pskBinders(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._pskBinders = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _quicTransportParameters(get, set) : Array<std.UInt>;
    function get__quicTransportParameters():Array<std.UInt> return [for (i in this._quicTransportParameters) i];
    function set__quicTransportParameters(v:Array<std.UInt>):Array<std.UInt> {
        this._quicTransportParameters = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_vers:std.UInt, ?_random:Array<std.UInt>, ?_sessionId:Array<std.UInt>, ?_cipherSuites:Array<std.UInt>, ?_compressionMethods:Array<std.UInt>, ?_serverName:String, ?_ocspStapling:Bool, ?_supportedCurves:Array<CurveID>, ?_supportedPoints:Array<std.UInt>, ?_ticketSupported:Bool, ?_sessionTicket:Array<std.UInt>, ?_supportedSignatureAlgorithms:Array<SignatureScheme>, ?_supportedSignatureAlgorithmsCert:Array<SignatureScheme>, ?_secureRenegotiationSupported:Bool, ?_secureRenegotiation:Array<std.UInt>, ?_extendedMasterSecret:Bool, ?_alpnProtocols:Array<String>, ?_scts:Bool, ?_supportedVersions:Array<std.UInt>, ?_cookie:Array<std.UInt>, ?_keyShares:Array<T_keyShare>, ?_earlyData:Bool, ?_pskModes:Array<std.UInt>, ?_pskIdentities:Array<T_pskIdentity>, ?_pskBinders:Array<Array<std.UInt>>, ?_quicTransportParameters:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_clientHelloMsg.T_clientHelloMsg(
([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_vers : stdgo.GoUInt16),
([for (i in _random) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _sessionId) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _cipherSuites) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>),
([for (i in _compressionMethods) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_serverName : stdgo.GoString),
_ocspStapling,
([for (i in _supportedCurves) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID>),
([for (i in _supportedPoints) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
_ticketSupported,
([for (i in _sessionTicket) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _supportedSignatureAlgorithms) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>),
([for (i in _supportedSignatureAlgorithmsCert) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>),
_secureRenegotiationSupported,
([for (i in _secureRenegotiation) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
_extendedMasterSecret,
([for (i in _alpnProtocols) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
_scts,
([for (i in _supportedVersions) (i : stdgo.GoUInt16)] : stdgo.Slice<stdgo.GoUInt16>),
([for (i in _cookie) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _keyShares) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_keyShare.T_keyShare>),
_earlyData,
([for (i in _pskModes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _pskIdentities) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_pskIdentity.T_pskIdentity>),
([for (i in _pskBinders) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>),
([for (i in _quicTransportParameters) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
