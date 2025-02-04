package stdgo._internal.crypto.x509;
@:local @:using(stdgo._internal.crypto.x509.X509_t__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _algo : stdgo._internal.crypto.x509.X509_signaturealgorithm.SignatureAlgorithm;
    public var _name : stdgo.GoString;
    public var _oid : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    public var _pubKeyAlgo : stdgo._internal.crypto.x509.X509_publickeyalgorithm.PublicKeyAlgorithm;
    public var _hash : stdgo._internal.crypto.Crypto_hash.Hash;
};
