package stdgo._internal.crypto.x509;
@:local @:using(stdgo._internal.crypto.x509.X509_T__struct_1_static_extension.T__struct_1_static_extension) typedef T__struct_1 = {
    public var _algo : stdgo._internal.crypto.x509.X509_SignatureAlgorithm.SignatureAlgorithm;
    public var _name : stdgo.GoString;
    public var _oid : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    public var _pubKeyAlgo : stdgo._internal.crypto.x509.X509_PublicKeyAlgorithm.PublicKeyAlgorithm;
    public var _hash : stdgo._internal.crypto.Crypto_Hash.Hash;
};
