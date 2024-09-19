package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:local @:using(stdgo._internal.crypto.x509.X509_T__struct_3_static_extension.T__struct_3_static_extension) typedef T__struct_3 = {
    public var type : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    @:tag("`asn1:\"set\"`")
    public var value : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>>;
};
