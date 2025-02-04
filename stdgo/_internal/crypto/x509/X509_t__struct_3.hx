package stdgo._internal.crypto.x509;
@:local @:using(stdgo._internal.crypto.x509.X509_t__struct_3_static_extension.T__struct_3_static_extension) @:using(stdgo._internal.crypto.x509.X509_t__struct_3_static_extension.T__struct_3_static_extension) typedef T__struct_3 = {
    public var type : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    @:tag("`asn1:\"set\"`")
    public var value : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>>;
};
