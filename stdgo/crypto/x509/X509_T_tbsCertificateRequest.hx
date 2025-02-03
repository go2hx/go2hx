package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_tbsCertificateRequest_static_extension) abstract T_tbsCertificateRequest(stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest) from stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest to stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent):stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent {
        this.raw = v;
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var subject(get, set) : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue;
    function get_subject():stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue return this.subject;
    function set_subject(v:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue):stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue {
        this.subject = v;
        return v;
    }
    public var publicKey(get, set) : T_publicKeyInfo;
    function get_publicKey():T_publicKeyInfo return this.publicKey;
    function set_publicKey(v:T_publicKeyInfo):T_publicKeyInfo {
        this.publicKey = v;
        return v;
    }
    public var rawAttributes(get, set) : Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>;
    function get_rawAttributes():Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> return [for (i in this.rawAttributes) i];
    function set_rawAttributes(v:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>):Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue> {
        this.rawAttributes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_RawContent.RawContent, ?version:StdTypes.Int, ?subject:stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue, ?publicKey:T_publicKeyInfo, ?rawAttributes:Array<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) this = new stdgo._internal.crypto.x509.X509_T_tbsCertificateRequest.T_tbsCertificateRequest(raw, (version : stdgo.GoInt), subject, publicKey, ([for (i in rawAttributes) i] : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
