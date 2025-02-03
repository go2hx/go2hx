package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.Certificate_static_extension) abstract Certificate(stdgo._internal.crypto.tls.Tls_Certificate.Certificate) from stdgo._internal.crypto.tls.Tls_Certificate.Certificate to stdgo._internal.crypto.tls.Tls_Certificate.Certificate {
    public var certificate(get, set) : Array<Array<std.UInt>>;
    function get_certificate():Array<Array<std.UInt>> return [for (i in this.certificate) [for (i in i) i]];
    function set_certificate(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this.certificate = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var privateKey(get, set) : stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey;
    function get_privateKey():stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey return this.privateKey;
    function set_privateKey(v:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey):stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey {
        this.privateKey = v;
        return v;
    }
    public var supportedSignatureAlgorithms(get, set) : Array<SignatureScheme>;
    function get_supportedSignatureAlgorithms():Array<SignatureScheme> return [for (i in this.supportedSignatureAlgorithms) i];
    function set_supportedSignatureAlgorithms(v:Array<SignatureScheme>):Array<SignatureScheme> {
        this.supportedSignatureAlgorithms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        return v;
    }
    public var oCSPStaple(get, set) : Array<std.UInt>;
    function get_oCSPStaple():Array<std.UInt> return [for (i in this.oCSPStaple) i];
    function set_oCSPStaple(v:Array<std.UInt>):Array<std.UInt> {
        this.oCSPStaple = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signedCertificateTimestamps(get, set) : Array<Array<std.UInt>>;
    function get_signedCertificateTimestamps():Array<Array<std.UInt>> return [for (i in this.signedCertificateTimestamps) [for (i in i) i]];
    function set_signedCertificateTimestamps(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this.signedCertificateTimestamps = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var leaf(get, set) : stdgo._internal.crypto.x509.X509_Certificate.Certificate;
    function get_leaf():stdgo._internal.crypto.x509.X509_Certificate.Certificate return this.leaf;
    function set_leaf(v:stdgo._internal.crypto.x509.X509_Certificate.Certificate):stdgo._internal.crypto.x509.X509_Certificate.Certificate {
        this.leaf = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return v;
    }
    public function new(?certificate:Array<Array<std.UInt>>, ?privateKey:stdgo._internal.crypto.Crypto_PrivateKey.PrivateKey, ?supportedSignatureAlgorithms:Array<SignatureScheme>, ?oCSPStaple:Array<std.UInt>, ?signedCertificateTimestamps:Array<Array<std.UInt>>, ?leaf:stdgo._internal.crypto.x509.X509_Certificate.Certificate) this = new stdgo._internal.crypto.tls.Tls_Certificate.Certificate(([for (i in certificate) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), privateKey, ([for (i in supportedSignatureAlgorithms) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>), ([for (i in oCSPStaple) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in signedCertificateTimestamps) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), (leaf : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
