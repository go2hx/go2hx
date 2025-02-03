package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.SessionState_static_extension) abstract SessionState(stdgo._internal.crypto.tls.Tls_SessionState.SessionState) from stdgo._internal.crypto.tls.Tls_SessionState.SessionState to stdgo._internal.crypto.tls.Tls_SessionState.SessionState {
    public var extra(get, set) : Array<Array<std.UInt>>;
    function get_extra():Array<Array<std.UInt>> return [for (i in this.extra) [for (i in i) i]];
    function set_extra(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this.extra = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var earlyData(get, set) : Bool;
    function get_earlyData():Bool return this.earlyData;
    function set_earlyData(v:Bool):Bool {
        this.earlyData = v;
        return v;
    }
    public var _version(get, set) : std.UInt;
    function get__version():std.UInt return this._version;
    function set__version(v:std.UInt):std.UInt {
        this._version = (v : stdgo.GoUInt16);
        return v;
    }
    public var _isClient(get, set) : Bool;
    function get__isClient():Bool return this._isClient;
    function set__isClient(v:Bool):Bool {
        this._isClient = v;
        return v;
    }
    public var _cipherSuite(get, set) : std.UInt;
    function get__cipherSuite():std.UInt return this._cipherSuite;
    function set__cipherSuite(v:std.UInt):std.UInt {
        this._cipherSuite = (v : stdgo.GoUInt16);
        return v;
    }
    public var _createdAt(get, set) : haxe.UInt64;
    function get__createdAt():haxe.UInt64 return this._createdAt;
    function set__createdAt(v:haxe.UInt64):haxe.UInt64 {
        this._createdAt = (v : stdgo.GoUInt64);
        return v;
    }
    public var _secret(get, set) : Array<std.UInt>;
    function get__secret():Array<std.UInt> return [for (i in this._secret) i];
    function set__secret(v:Array<std.UInt>):Array<std.UInt> {
        this._secret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _extMasterSecret(get, set) : Bool;
    function get__extMasterSecret():Bool return this._extMasterSecret;
    function set__extMasterSecret(v:Bool):Bool {
        this._extMasterSecret = v;
        return v;
    }
    public var _peerCertificates(get, set) : Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>;
    function get__peerCertificates():Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate> return [for (i in this._peerCertificates) i];
    function set__peerCertificates(v:Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate> {
        this._peerCertificates = ([for (i in v) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        return v;
    }
    public var _activeCertHandles(get, set) : Array<T_activeCert>;
    function get__activeCertHandles():Array<T_activeCert> return [for (i in this._activeCertHandles) i];
    function set__activeCertHandles(v:Array<T_activeCert>):Array<T_activeCert> {
        this._activeCertHandles = ([for (i in v) (i : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>>);
        return v;
    }
    public var _ocspResponse(get, set) : Array<std.UInt>;
    function get__ocspResponse():Array<std.UInt> return [for (i in this._ocspResponse) i];
    function set__ocspResponse(v:Array<std.UInt>):Array<std.UInt> {
        this._ocspResponse = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _scts(get, set) : Array<Array<std.UInt>>;
    function get__scts():Array<Array<std.UInt>> return [for (i in this._scts) [for (i in i) i]];
    function set__scts(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._scts = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _verifiedChains(get, set) : Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>;
    function get__verifiedChains():Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> return [for (i in this._verifiedChains) [for (i in i) i]];
    function set__verifiedChains(v:Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>):Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> {
        this._verifiedChains = ([for (i in v) ([for (i in i) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)] : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>);
        return v;
    }
    public var _alpnProtocol(get, set) : String;
    function get__alpnProtocol():String return this._alpnProtocol;
    function set__alpnProtocol(v:String):String {
        this._alpnProtocol = (v : stdgo.GoString);
        return v;
    }
    public var _useBy(get, set) : haxe.UInt64;
    function get__useBy():haxe.UInt64 return this._useBy;
    function set__useBy(v:haxe.UInt64):haxe.UInt64 {
        this._useBy = (v : stdgo.GoUInt64);
        return v;
    }
    public var _ageAdd(get, set) : std.UInt;
    function get__ageAdd():std.UInt return this._ageAdd;
    function set__ageAdd(v:std.UInt):std.UInt {
        this._ageAdd = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?extra:Array<Array<std.UInt>>, ?earlyData:Bool, ?_version:std.UInt, ?_isClient:Bool, ?_cipherSuite:std.UInt, ?_createdAt:haxe.UInt64, ?_secret:Array<std.UInt>, ?_extMasterSecret:Bool, ?_peerCertificates:Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, ?_activeCertHandles:Array<T_activeCert>, ?_ocspResponse:Array<std.UInt>, ?_scts:Array<Array<std.UInt>>, ?_verifiedChains:Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, ?_alpnProtocol:String, ?_useBy:haxe.UInt64, ?_ageAdd:std.UInt) this = new stdgo._internal.crypto.tls.Tls_SessionState.SessionState(
([for (i in extra) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>),
earlyData,
(_version : stdgo.GoUInt16),
_isClient,
(_cipherSuite : stdgo.GoUInt16),
(_createdAt : stdgo.GoUInt64),
([for (i in _secret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
_extMasterSecret,
([for (i in _peerCertificates) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>),
([for (i in _activeCertHandles) (i : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_activeCert.T_activeCert>>),
([for (i in _ocspResponse) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _scts) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>),
([for (i in _verifiedChains) ([for (i in i) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)] : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>),
(_alpnProtocol : stdgo.GoString),
(_useBy : stdgo.GoUInt64),
(_ageAdd : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
