package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.RevocationList_static_extension) abstract RevocationList(stdgo._internal.crypto.x509.X509_RevocationList.RevocationList) from stdgo._internal.crypto.x509.X509_RevocationList.RevocationList to stdgo._internal.crypto.x509.X509_RevocationList.RevocationList {
    public var raw(get, set) : Array<std.UInt>;
    function get_raw():Array<std.UInt> return [for (i in this.raw) i];
    function set_raw(v:Array<std.UInt>):Array<std.UInt> {
        this.raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawTBSRevocationList(get, set) : Array<std.UInt>;
    function get_rawTBSRevocationList():Array<std.UInt> return [for (i in this.rawTBSRevocationList) i];
    function set_rawTBSRevocationList(v:Array<std.UInt>):Array<std.UInt> {
        this.rawTBSRevocationList = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var rawIssuer(get, set) : Array<std.UInt>;
    function get_rawIssuer():Array<std.UInt> return [for (i in this.rawIssuer) i];
    function set_rawIssuer(v:Array<std.UInt>):Array<std.UInt> {
        this.rawIssuer = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var issuer(get, set) : Name;
    function get_issuer():Name return this.issuer;
    function set_issuer(v:Name):Name {
        this.issuer = v;
        return v;
    }
    public var authorityKeyId(get, set) : Array<std.UInt>;
    function get_authorityKeyId():Array<std.UInt> return [for (i in this.authorityKeyId) i];
    function set_authorityKeyId(v:Array<std.UInt>):Array<std.UInt> {
        this.authorityKeyId = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signature(get, set) : Array<std.UInt>;
    function get_signature():Array<std.UInt> return [for (i in this.signature) i];
    function set_signature(v:Array<std.UInt>):Array<std.UInt> {
        this.signature = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var signatureAlgorithm(get, set) : SignatureAlgorithm;
    function get_signatureAlgorithm():SignatureAlgorithm return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:SignatureAlgorithm):SignatureAlgorithm {
        this.signatureAlgorithm = v;
        return v;
    }
    public var revokedCertificateEntries(get, set) : Array<RevocationListEntry>;
    function get_revokedCertificateEntries():Array<RevocationListEntry> return [for (i in this.revokedCertificateEntries) i];
    function set_revokedCertificateEntries(v:Array<RevocationListEntry>):Array<RevocationListEntry> {
        this.revokedCertificateEntries = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry>);
        return v;
    }
    public var revokedCertificates(get, set) : Array<RevokedCertificate>;
    function get_revokedCertificates():Array<RevokedCertificate> return [for (i in this.revokedCertificates) i];
    function set_revokedCertificates(v:Array<RevokedCertificate>):Array<RevokedCertificate> {
        this.revokedCertificates = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>);
        return v;
    }
    public var number(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_number():stdgo._internal.math.big.Big_Int_.Int_ return this.number;
    function set_number(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.number = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var thisUpdate(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_thisUpdate():stdgo._internal.time.Time_Time.Time return this.thisUpdate;
    function set_thisUpdate(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.thisUpdate = v;
        return v;
    }
    public var nextUpdate(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_nextUpdate():stdgo._internal.time.Time_Time.Time return this.nextUpdate;
    function set_nextUpdate(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.nextUpdate = v;
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public var extraExtensions(get, set) : Array<Extension>;
    function get_extraExtensions():Array<Extension> return [for (i in this.extraExtensions) i];
    function set_extraExtensions(v:Array<Extension>):Array<Extension> {
        this.extraExtensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        return v;
    }
    public function new(?raw:Array<std.UInt>, ?rawTBSRevocationList:Array<std.UInt>, ?rawIssuer:Array<std.UInt>, ?issuer:Name, ?authorityKeyId:Array<std.UInt>, ?signature:Array<std.UInt>, ?signatureAlgorithm:SignatureAlgorithm, ?revokedCertificateEntries:Array<RevocationListEntry>, ?revokedCertificates:Array<RevokedCertificate>, ?number:stdgo._internal.math.big.Big_Int_.Int_, ?thisUpdate:stdgo._internal.time.Time_Time.Time, ?nextUpdate:stdgo._internal.time.Time_Time.Time, ?extensions:Array<Extension>, ?extraExtensions:Array<Extension>) this = new stdgo._internal.crypto.x509.X509_RevocationList.RevocationList(
([for (i in raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawTBSRevocationList) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in rawIssuer) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
issuer,
([for (i in authorityKeyId) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in signature) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
signatureAlgorithm,
([for (i in revokedCertificateEntries) i] : stdgo.Slice<stdgo._internal.crypto.x509.X509_RevocationListEntry.RevocationListEntry>),
([for (i in revokedCertificates) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_RevokedCertificate.RevokedCertificate>),
(number : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>),
thisUpdate,
nextUpdate,
([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>),
([for (i in extraExtensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
