package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.ConnectionState_static_extension) abstract ConnectionState(stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState) from stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState to stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState {
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt16);
        return v;
    }
    public var handshakeComplete(get, set) : Bool;
    function get_handshakeComplete():Bool return this.handshakeComplete;
    function set_handshakeComplete(v:Bool):Bool {
        this.handshakeComplete = v;
        return v;
    }
    public var didResume(get, set) : Bool;
    function get_didResume():Bool return this.didResume;
    function set_didResume(v:Bool):Bool {
        this.didResume = v;
        return v;
    }
    public var cipherSuite(get, set) : std.UInt;
    function get_cipherSuite():std.UInt return this.cipherSuite;
    function set_cipherSuite(v:std.UInt):std.UInt {
        this.cipherSuite = (v : stdgo.GoUInt16);
        return v;
    }
    public var negotiatedProtocol(get, set) : String;
    function get_negotiatedProtocol():String return this.negotiatedProtocol;
    function set_negotiatedProtocol(v:String):String {
        this.negotiatedProtocol = (v : stdgo.GoString);
        return v;
    }
    public var negotiatedProtocolIsMutual(get, set) : Bool;
    function get_negotiatedProtocolIsMutual():Bool return this.negotiatedProtocolIsMutual;
    function set_negotiatedProtocolIsMutual(v:Bool):Bool {
        this.negotiatedProtocolIsMutual = v;
        return v;
    }
    public var serverName(get, set) : String;
    function get_serverName():String return this.serverName;
    function set_serverName(v:String):String {
        this.serverName = (v : stdgo.GoString);
        return v;
    }
    public var peerCertificates(get, set) : Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>;
    function get_peerCertificates():Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate> return [for (i in this.peerCertificates) i];
    function set_peerCertificates(v:Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate> {
        this.peerCertificates = ([for (i in v) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>);
        return v;
    }
    public var verifiedChains(get, set) : Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>;
    function get_verifiedChains():Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> return [for (i in this.verifiedChains) [for (i in i) i]];
    function set_verifiedChains(v:Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>):Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>> {
        this.verifiedChains = ([for (i in v) ([for (i in i) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)] : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>);
        return v;
    }
    public var signedCertificateTimestamps(get, set) : Array<Array<std.UInt>>;
    function get_signedCertificateTimestamps():Array<Array<std.UInt>> return [for (i in this.signedCertificateTimestamps) [for (i in i) i]];
    function set_signedCertificateTimestamps(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this.signedCertificateTimestamps = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var oCSPResponse(get, set) : Array<std.UInt>;
    function get_oCSPResponse():Array<std.UInt> return [for (i in this.oCSPResponse) i];
    function set_oCSPResponse(v:Array<std.UInt>):Array<std.UInt> {
        this.oCSPResponse = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var tLSUnique(get, set) : Array<std.UInt>;
    function get_tLSUnique():Array<std.UInt> return [for (i in this.tLSUnique) i];
    function set_tLSUnique(v:Array<std.UInt>):Array<std.UInt> {
        this.tLSUnique = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ekm(get, set) : (stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    function get__ekm():(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return (_0, _1, _2) -> this._ekm(_0, [for (i in _1) i], _2);
    function set__ekm(v:(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        this._ekm = v;
        return v;
    }
    public function new(?version:std.UInt, ?handshakeComplete:Bool, ?didResume:Bool, ?cipherSuite:std.UInt, ?negotiatedProtocol:String, ?negotiatedProtocolIsMutual:Bool, ?serverName:String, ?peerCertificates:Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, ?verifiedChains:Array<Array<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>, ?signedCertificateTimestamps:Array<Array<std.UInt>>, ?oCSPResponse:Array<std.UInt>, ?tLSUnique:Array<std.UInt>, ?_ekm:(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; }) this = new stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState(
(version : stdgo.GoUInt16),
handshakeComplete,
didResume,
(cipherSuite : stdgo.GoUInt16),
(negotiatedProtocol : stdgo.GoString),
negotiatedProtocolIsMutual,
(serverName : stdgo.GoString),
([for (i in peerCertificates) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>),
([for (i in verifiedChains) ([for (i in i) (i : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)] : stdgo.Slice<stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>>),
([for (i in signedCertificateTimestamps) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>),
([for (i in oCSPResponse) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in tLSUnique) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
_ekm);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
