package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_serverHelloMsg_static_extension) abstract T_serverHelloMsg(stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg) from stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg to stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg {
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
    public var _cipherSuite(get, set) : std.UInt;
    function get__cipherSuite():std.UInt return this._cipherSuite;
    function set__cipherSuite(v:std.UInt):std.UInt {
        this._cipherSuite = (v : stdgo.GoUInt16);
        return v;
    }
    public var _compressionMethod(get, set) : std.UInt;
    function get__compressionMethod():std.UInt return this._compressionMethod;
    function set__compressionMethod(v:std.UInt):std.UInt {
        this._compressionMethod = (v : stdgo.GoUInt8);
        return v;
    }
    public var _ocspStapling(get, set) : Bool;
    function get__ocspStapling():Bool return this._ocspStapling;
    function set__ocspStapling(v:Bool):Bool {
        this._ocspStapling = v;
        return v;
    }
    public var _ticketSupported(get, set) : Bool;
    function get__ticketSupported():Bool return this._ticketSupported;
    function set__ticketSupported(v:Bool):Bool {
        this._ticketSupported = v;
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
    public var _alpnProtocol(get, set) : String;
    function get__alpnProtocol():String return this._alpnProtocol;
    function set__alpnProtocol(v:String):String {
        this._alpnProtocol = (v : stdgo.GoString);
        return v;
    }
    public var _scts(get, set) : Array<Array<std.UInt>>;
    function get__scts():Array<Array<std.UInt>> return [for (i in this._scts) [for (i in i) i]];
    function set__scts(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._scts = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _supportedVersion(get, set) : std.UInt;
    function get__supportedVersion():std.UInt return this._supportedVersion;
    function set__supportedVersion(v:std.UInt):std.UInt {
        this._supportedVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var _serverShare(get, set) : T_keyShare;
    function get__serverShare():T_keyShare return this._serverShare;
    function set__serverShare(v:T_keyShare):T_keyShare {
        this._serverShare = v;
        return v;
    }
    public var _selectedIdentityPresent(get, set) : Bool;
    function get__selectedIdentityPresent():Bool return this._selectedIdentityPresent;
    function set__selectedIdentityPresent(v:Bool):Bool {
        this._selectedIdentityPresent = v;
        return v;
    }
    public var _selectedIdentity(get, set) : std.UInt;
    function get__selectedIdentity():std.UInt return this._selectedIdentity;
    function set__selectedIdentity(v:std.UInt):std.UInt {
        this._selectedIdentity = (v : stdgo.GoUInt16);
        return v;
    }
    public var _supportedPoints(get, set) : Array<std.UInt>;
    function get__supportedPoints():Array<std.UInt> return [for (i in this._supportedPoints) i];
    function set__supportedPoints(v:Array<std.UInt>):Array<std.UInt> {
        this._supportedPoints = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cookie(get, set) : Array<std.UInt>;
    function get__cookie():Array<std.UInt> return [for (i in this._cookie) i];
    function set__cookie(v:Array<std.UInt>):Array<std.UInt> {
        this._cookie = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _selectedGroup(get, set) : CurveID;
    function get__selectedGroup():CurveID return this._selectedGroup;
    function set__selectedGroup(v:CurveID):CurveID {
        this._selectedGroup = v;
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_vers:std.UInt, ?_random:Array<std.UInt>, ?_sessionId:Array<std.UInt>, ?_cipherSuite:std.UInt, ?_compressionMethod:std.UInt, ?_ocspStapling:Bool, ?_ticketSupported:Bool, ?_secureRenegotiationSupported:Bool, ?_secureRenegotiation:Array<std.UInt>, ?_extendedMasterSecret:Bool, ?_alpnProtocol:String, ?_scts:Array<Array<std.UInt>>, ?_supportedVersion:std.UInt, ?_serverShare:T_keyShare, ?_selectedIdentityPresent:Bool, ?_selectedIdentity:std.UInt, ?_supportedPoints:Array<std.UInt>, ?_cookie:Array<std.UInt>, ?_selectedGroup:CurveID) this = new stdgo._internal.crypto.tls.Tls_T_serverHelloMsg.T_serverHelloMsg(
([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_vers : stdgo.GoUInt16),
([for (i in _random) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _sessionId) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
(_cipherSuite : stdgo.GoUInt16),
(_compressionMethod : stdgo.GoUInt8),
_ocspStapling,
_ticketSupported,
_secureRenegotiationSupported,
([for (i in _secureRenegotiation) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
_extendedMasterSecret,
(_alpnProtocol : stdgo.GoString),
([for (i in _scts) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>),
(_supportedVersion : stdgo.GoUInt16),
_serverShare,
_selectedIdentityPresent,
(_selectedIdentity : stdgo.GoUInt16),
([for (i in _supportedPoints) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _cookie) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
_selectedGroup);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
