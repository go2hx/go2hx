package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_serverhellomsg_static_extension.T_serverHelloMsg_static_extension) class T_serverHelloMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _vers : stdgo.GoUInt16 = 0;
    public var _random : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _sessionId : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cipherSuite : stdgo.GoUInt16 = 0;
    public var _compressionMethod : stdgo.GoUInt8 = 0;
    public var _ocspStapling : Bool = false;
    public var _ticketSupported : Bool = false;
    public var _secureRenegotiationSupported : Bool = false;
    public var _secureRenegotiation : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _extendedMasterSecret : Bool = false;
    public var _alpnProtocol : stdgo.GoString = "";
    public var _scts : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public var _supportedVersion : stdgo.GoUInt16 = 0;
    public var _serverShare : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare = ({} : stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare);
    public var _selectedIdentityPresent : Bool = false;
    public var _selectedIdentity : stdgo.GoUInt16 = 0;
    public var _supportedPoints : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cookie : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _selectedGroup : stdgo._internal.crypto.tls.Tls_curveid.CurveID = ((0 : stdgo.GoUInt16) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_vers:stdgo.GoUInt16, ?_random:stdgo.Slice<stdgo.GoUInt8>, ?_sessionId:stdgo.Slice<stdgo.GoUInt8>, ?_cipherSuite:stdgo.GoUInt16, ?_compressionMethod:stdgo.GoUInt8, ?_ocspStapling:Bool, ?_ticketSupported:Bool, ?_secureRenegotiationSupported:Bool, ?_secureRenegotiation:stdgo.Slice<stdgo.GoUInt8>, ?_extendedMasterSecret:Bool, ?_alpnProtocol:stdgo.GoString, ?_scts:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>, ?_supportedVersion:stdgo.GoUInt16, ?_serverShare:stdgo._internal.crypto.tls.Tls_t_keyshare.T_keyShare, ?_selectedIdentityPresent:Bool, ?_selectedIdentity:stdgo.GoUInt16, ?_supportedPoints:stdgo.Slice<stdgo.GoUInt8>, ?_cookie:stdgo.Slice<stdgo.GoUInt8>, ?_selectedGroup:stdgo._internal.crypto.tls.Tls_curveid.CurveID) {
        if (_raw != null) this._raw = _raw;
        if (_vers != null) this._vers = _vers;
        if (_random != null) this._random = _random;
        if (_sessionId != null) this._sessionId = _sessionId;
        if (_cipherSuite != null) this._cipherSuite = _cipherSuite;
        if (_compressionMethod != null) this._compressionMethod = _compressionMethod;
        if (_ocspStapling != null) this._ocspStapling = _ocspStapling;
        if (_ticketSupported != null) this._ticketSupported = _ticketSupported;
        if (_secureRenegotiationSupported != null) this._secureRenegotiationSupported = _secureRenegotiationSupported;
        if (_secureRenegotiation != null) this._secureRenegotiation = _secureRenegotiation;
        if (_extendedMasterSecret != null) this._extendedMasterSecret = _extendedMasterSecret;
        if (_alpnProtocol != null) this._alpnProtocol = _alpnProtocol;
        if (_scts != null) this._scts = _scts;
        if (_supportedVersion != null) this._supportedVersion = _supportedVersion;
        if (_serverShare != null) this._serverShare = _serverShare;
        if (_selectedIdentityPresent != null) this._selectedIdentityPresent = _selectedIdentityPresent;
        if (_selectedIdentity != null) this._selectedIdentity = _selectedIdentity;
        if (_supportedPoints != null) this._supportedPoints = _supportedPoints;
        if (_cookie != null) this._cookie = _cookie;
        if (_selectedGroup != null) this._selectedGroup = _selectedGroup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serverHelloMsg(
_raw,
_vers,
_random,
_sessionId,
_cipherSuite,
_compressionMethod,
_ocspStapling,
_ticketSupported,
_secureRenegotiationSupported,
_secureRenegotiation,
_extendedMasterSecret,
_alpnProtocol,
_scts,
_supportedVersion,
_serverShare,
_selectedIdentityPresent,
_selectedIdentity,
_supportedPoints,
_cookie,
_selectedGroup);
    }
}
