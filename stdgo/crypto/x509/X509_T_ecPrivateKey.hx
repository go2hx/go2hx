package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_ecPrivateKey_static_extension) abstract T_ecPrivateKey(stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey) from stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey to stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey {
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var privateKey(get, set) : Array<std.UInt>;
    function get_privateKey():Array<std.UInt> return [for (i in this.privateKey) i];
    function set_privateKey(v:Array<std.UInt>):Array<std.UInt> {
        this.privateKey = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var namedCurveOID(get, set) : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier;
    function get_namedCurveOID():stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier return this.namedCurveOID;
    function set_namedCurveOID(v:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier {
        this.namedCurveOID = v;
        return v;
    }
    public var publicKey(get, set) : stdgo._internal.encoding.asn1.Asn1_BitString.BitString;
    function get_publicKey():stdgo._internal.encoding.asn1.Asn1_BitString.BitString return this.publicKey;
    function set_publicKey(v:stdgo._internal.encoding.asn1.Asn1_BitString.BitString):stdgo._internal.encoding.asn1.Asn1_BitString.BitString {
        this.publicKey = v;
        return v;
    }
    public function new(?version:StdTypes.Int, ?privateKey:Array<std.UInt>, ?namedCurveOID:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, ?publicKey:stdgo._internal.encoding.asn1.Asn1_BitString.BitString) this = new stdgo._internal.crypto.x509.X509_T_ecPrivateKey.T_ecPrivateKey((version : stdgo.GoInt), ([for (i in privateKey) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), namedCurveOID, publicKey);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
