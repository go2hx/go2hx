package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_ciphersuite_static_extension.CipherSuite_static_extension) class CipherSuite {
    public var iD : stdgo.GoUInt16 = 0;
    public var name : stdgo.GoString = "";
    public var supportedVersions : stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
    public var insecure : Bool = false;
    public function new(?iD:stdgo.GoUInt16, ?name:stdgo.GoString, ?supportedVersions:stdgo.Slice<stdgo.GoUInt16>, ?insecure:Bool) {
        if (iD != null) this.iD = iD;
        if (name != null) this.name = name;
        if (supportedVersions != null) this.supportedVersions = supportedVersions;
        if (insecure != null) this.insecure = insecure;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CipherSuite(iD, name, supportedVersions, insecure);
    }
}
