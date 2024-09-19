package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:local @:using(stdgo._internal.crypto.x509.X509_T__struct_2_static_extension.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _extKeyUsage : stdgo._internal.crypto.x509.X509_ExtKeyUsage.ExtKeyUsage;
    public var _oid : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
};
