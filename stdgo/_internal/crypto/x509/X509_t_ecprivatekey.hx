package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_ecprivatekey_static_extension.T_ecPrivateKey_static_extension) class T_ecPrivateKey {
    public var version : stdgo.GoInt = 0;
    public var privateKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    @:tag("`asn1:\"optional,explicit,tag:0\"`")
    public var namedCurveOID : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
    @:tag("`asn1:\"optional,explicit,tag:1\"`")
    public var publicKey : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString = ({} : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
    public function new(?version:stdgo.GoInt, ?privateKey:stdgo.Slice<stdgo.GoUInt8>, ?namedCurveOID:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) {
        if (version != null) this.version = version;
        if (privateKey != null) this.privateKey = privateKey;
        if (namedCurveOID != null) this.namedCurveOID = namedCurveOID;
        if (publicKey != null) this.publicKey = publicKey;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ecPrivateKey(version, privateKey, namedCurveOID, publicKey);
    }
}
