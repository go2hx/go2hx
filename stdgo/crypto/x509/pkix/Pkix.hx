package stdgo.crypto.x509.pkix;
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.AlgorithmIdentifier_static_extension) abstract AlgorithmIdentifier(stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier) from stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier to stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier {
    public var algorithm(get, set) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    function get_algorithm():stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier return this.algorithm;
    function set_algorithm(v:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier {
        this.algorithm = v;
        return v;
    }
    public var parameters(get, set) : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue;
    function get_parameters():stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue return this.parameters;
    function set_parameters(v:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue):stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue {
        this.parameters = v;
        return v;
    }
    public function new(?algorithm:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?parameters:stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) this = new stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifier.AlgorithmIdentifier(algorithm, parameters);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValue_static_extension) abstract AttributeTypeAndValue(stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue) from stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue to stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue {
    public var type(get, set) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    function get_type():stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier return this.type;
    function set_type(v:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier {
        this.type = v;
        return v;
    }
    public var value(get, set) : stdgo.AnyInterface;
    function get_value():stdgo.AnyInterface return this.value;
    function set_value(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.value = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?type:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?value:stdgo.AnyInterface) this = new stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue(type, (value : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.AttributeTypeAndValueSET_static_extension) abstract AttributeTypeAndValueSET(stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET) from stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET to stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET {
    public var type(get, set) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    function get_type():stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier return this.type;
    function set_type(v:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier {
        this.type = v;
        return v;
    }
    public var value(get, set) : Array<Array<AttributeTypeAndValue>>;
    function get_value():Array<Array<AttributeTypeAndValue>> return [for (i in this.value) [for (i in i) i]];
    function set_value(v:Array<Array<AttributeTypeAndValue>>):Array<Array<AttributeTypeAndValue>> {
        this.value = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>);
        return v;
    }
    public function new(?type:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?value:Array<Array<AttributeTypeAndValue>>) this = new stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalueset.AttributeTypeAndValueSET(type, ([for (i in value) ([for (i in i) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>)] : stdgo.Slice<stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.Extension_static_extension) abstract Extension(stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension) from stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension to stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension {
    public var id(get, set) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier;
    function get_id():stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier return this.id;
    function set_id(v:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier {
        this.id = v;
        return v;
    }
    public var critical(get, set) : Bool;
    function get_critical():Bool return this.critical;
    function set_critical(v:Bool):Bool {
        this.critical = v;
        return v;
    }
    public var value(get, set) : Array<std.UInt>;
    function get_value():Array<std.UInt> return [for (i in this.value) i];
    function set_value(v:Array<std.UInt>):Array<std.UInt> {
        this.value = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?id:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier, ?critical:Bool, ?value:Array<std.UInt>) this = new stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension(id, critical, ([for (i in value) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.Name_static_extension) abstract Name(stdgo._internal.crypto.x509.pkix.Pkix_name.Name) from stdgo._internal.crypto.x509.pkix.Pkix_name.Name to stdgo._internal.crypto.x509.pkix.Pkix_name.Name {
    public var country(get, set) : Array<String>;
    function get_country():Array<String> return [for (i in this.country) i];
    function set_country(v:Array<String>):Array<String> {
        this.country = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var organization(get, set) : Array<String>;
    function get_organization():Array<String> return [for (i in this.organization) i];
    function set_organization(v:Array<String>):Array<String> {
        this.organization = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var organizationalUnit(get, set) : Array<String>;
    function get_organizationalUnit():Array<String> return [for (i in this.organizationalUnit) i];
    function set_organizationalUnit(v:Array<String>):Array<String> {
        this.organizationalUnit = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var locality(get, set) : Array<String>;
    function get_locality():Array<String> return [for (i in this.locality) i];
    function set_locality(v:Array<String>):Array<String> {
        this.locality = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var province(get, set) : Array<String>;
    function get_province():Array<String> return [for (i in this.province) i];
    function set_province(v:Array<String>):Array<String> {
        this.province = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var streetAddress(get, set) : Array<String>;
    function get_streetAddress():Array<String> return [for (i in this.streetAddress) i];
    function set_streetAddress(v:Array<String>):Array<String> {
        this.streetAddress = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var postalCode(get, set) : Array<String>;
    function get_postalCode():Array<String> return [for (i in this.postalCode) i];
    function set_postalCode(v:Array<String>):Array<String> {
        this.postalCode = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var serialNumber(get, set) : String;
    function get_serialNumber():String return this.serialNumber;
    function set_serialNumber(v:String):String {
        this.serialNumber = (v : stdgo.GoString);
        return v;
    }
    public var commonName(get, set) : String;
    function get_commonName():String return this.commonName;
    function set_commonName(v:String):String {
        this.commonName = (v : stdgo.GoString);
        return v;
    }
    public var names(get, set) : Array<AttributeTypeAndValue>;
    function get_names():Array<AttributeTypeAndValue> return [for (i in this.names) i];
    function set_names(v:Array<AttributeTypeAndValue>):Array<AttributeTypeAndValue> {
        this.names = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
        return v;
    }
    public var extraNames(get, set) : Array<AttributeTypeAndValue>;
    function get_extraNames():Array<AttributeTypeAndValue> return [for (i in this.extraNames) i];
    function set_extraNames(v:Array<AttributeTypeAndValue>):Array<AttributeTypeAndValue> {
        this.extraNames = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
        return v;
    }
    public function new(?country:Array<String>, ?organization:Array<String>, ?organizationalUnit:Array<String>, ?locality:Array<String>, ?province:Array<String>, ?streetAddress:Array<String>, ?postalCode:Array<String>, ?serialNumber:String, ?commonName:String, ?names:Array<AttributeTypeAndValue>, ?extraNames:Array<AttributeTypeAndValue>) this = new stdgo._internal.crypto.x509.pkix.Pkix_name.Name(
([for (i in country) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in organization) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in organizationalUnit) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in locality) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in province) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in streetAddress) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in postalCode) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(serialNumber : stdgo.GoString),
(commonName : stdgo.GoString),
([for (i in names) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>),
([for (i in extraNames) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.CertificateList_static_extension) abstract CertificateList(stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList) from stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList to stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList {
    public var tBSCertList(get, set) : TBSCertificateList;
    function get_tBSCertList():TBSCertificateList return this.tBSCertList;
    function set_tBSCertList(v:TBSCertificateList):TBSCertificateList {
        this.tBSCertList = v;
        return v;
    }
    public var signatureAlgorithm(get, set) : AlgorithmIdentifier;
    function get_signatureAlgorithm():AlgorithmIdentifier return this.signatureAlgorithm;
    function set_signatureAlgorithm(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signatureAlgorithm = v;
        return v;
    }
    public var signatureValue(get, set) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString;
    function get_signatureValue():stdgo._internal.encoding.asn1.Asn1_bitstring.BitString return this.signatureValue;
    function set_signatureValue(v:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString):stdgo._internal.encoding.asn1.Asn1_bitstring.BitString {
        this.signatureValue = v;
        return v;
    }
    public function new(?tBSCertList:TBSCertificateList, ?signatureAlgorithm:AlgorithmIdentifier, ?signatureValue:stdgo._internal.encoding.asn1.Asn1_bitstring.BitString) this = new stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList(tBSCertList, signatureAlgorithm, signatureValue);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.TBSCertificateList_static_extension) abstract TBSCertificateList(stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList) from stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList to stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList {
    public var raw(get, set) : stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent;
    function get_raw():stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent return this.raw;
    function set_raw(v:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent):stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent {
        this.raw = v;
        return v;
    }
    public var version(get, set) : StdTypes.Int;
    function get_version():StdTypes.Int return this.version;
    function set_version(v:StdTypes.Int):StdTypes.Int {
        this.version = (v : stdgo.GoInt);
        return v;
    }
    public var signature(get, set) : AlgorithmIdentifier;
    function get_signature():AlgorithmIdentifier return this.signature;
    function set_signature(v:AlgorithmIdentifier):AlgorithmIdentifier {
        this.signature = v;
        return v;
    }
    public var issuer(get, set) : RDNSequence;
    function get_issuer():RDNSequence return this.issuer;
    function set_issuer(v:RDNSequence):RDNSequence {
        this.issuer = v;
        return v;
    }
    public var thisUpdate(get, set) : stdgo._internal.time.Time_time.Time;
    function get_thisUpdate():stdgo._internal.time.Time_time.Time return this.thisUpdate;
    function set_thisUpdate(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.thisUpdate = v;
        return v;
    }
    public var nextUpdate(get, set) : stdgo._internal.time.Time_time.Time;
    function get_nextUpdate():stdgo._internal.time.Time_time.Time return this.nextUpdate;
    function set_nextUpdate(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.nextUpdate = v;
        return v;
    }
    public var revokedCertificates(get, set) : Array<RevokedCertificate>;
    function get_revokedCertificates():Array<RevokedCertificate> return [for (i in this.revokedCertificates) i];
    function set_revokedCertificates(v:Array<RevokedCertificate>):Array<RevokedCertificate> {
        this.revokedCertificates = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>);
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public function new(?raw:stdgo._internal.encoding.asn1.Asn1_rawcontent.RawContent, ?version:StdTypes.Int, ?signature:AlgorithmIdentifier, ?issuer:RDNSequence, ?thisUpdate:stdgo._internal.time.Time_time.Time, ?nextUpdate:stdgo._internal.time.Time_time.Time, ?revokedCertificates:Array<RevokedCertificate>, ?extensions:Array<Extension>) this = new stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelist.TBSCertificateList(raw, (version : stdgo.GoInt), signature, issuer, thisUpdate, nextUpdate, ([for (i in revokedCertificates) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate>), ([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.RevokedCertificate_static_extension) abstract RevokedCertificate(stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate) from stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate to stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate {
    public var serialNumber(get, set) : stdgo._internal.math.big.Big_int_.Int_;
    function get_serialNumber():stdgo._internal.math.big.Big_int_.Int_ return this.serialNumber;
    function set_serialNumber(v:stdgo._internal.math.big.Big_int_.Int_):stdgo._internal.math.big.Big_int_.Int_ {
        this.serialNumber = (v : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        return v;
    }
    public var revocationTime(get, set) : stdgo._internal.time.Time_time.Time;
    function get_revocationTime():stdgo._internal.time.Time_time.Time return this.revocationTime;
    function set_revocationTime(v:stdgo._internal.time.Time_time.Time):stdgo._internal.time.Time_time.Time {
        this.revocationTime = v;
        return v;
    }
    public var extensions(get, set) : Array<Extension>;
    function get_extensions():Array<Extension> return [for (i in this.extensions) i];
    function set_extensions(v:Array<Extension>):Array<Extension> {
        this.extensions = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        return v;
    }
    public function new(?serialNumber:stdgo._internal.math.big.Big_int_.Int_, ?revocationTime:stdgo._internal.time.Time_time.Time, ?extensions:Array<Extension>) this = new stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificate.RevokedCertificate((serialNumber : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), revocationTime, ([for (i in extensions) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef RDNSequence = stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence;
typedef RelativeDistinguishedNameSET = stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET;
typedef AlgorithmIdentifierPointer = stdgo._internal.crypto.x509.pkix.Pkix_algorithmidentifierpointer.AlgorithmIdentifierPointer;
class AlgorithmIdentifier_static_extension {

}
typedef AttributeTypeAndValuePointer = stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvaluepointer.AttributeTypeAndValuePointer;
class AttributeTypeAndValue_static_extension {

}
typedef AttributeTypeAndValueSETPointer = stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvaluesetpointer.AttributeTypeAndValueSETPointer;
class AttributeTypeAndValueSET_static_extension {

}
typedef ExtensionPointer = stdgo._internal.crypto.x509.pkix.Pkix_extensionpointer.ExtensionPointer;
class Extension_static_extension {

}
typedef NamePointer = stdgo._internal.crypto.x509.pkix.Pkix_namepointer.NamePointer;
class Name_static_extension {
    static public function string(_n:Name):String {
        return stdgo._internal.crypto.x509.pkix.Pkix_name_static_extension.Name_static_extension.string(_n);
    }
    static public function toRDNSequence(_n:Name):RDNSequence {
        return stdgo._internal.crypto.x509.pkix.Pkix_name_static_extension.Name_static_extension.toRDNSequence(_n);
    }
    static public function _appendRDNs(_n:Name, _in:RDNSequence, _values:Array<String>, _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):RDNSequence {
        final _values = ([for (i in _values) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.crypto.x509.pkix.Pkix_name_static_extension.Name_static_extension._appendRDNs(_n, _in, _values, _oid);
    }
    static public function fillFromRDNSequence(_n:Name, _rdns:RDNSequence):Void {
        final _n = (_n : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_name.Name>);
        final _rdns = (_rdns : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>);
        stdgo._internal.crypto.x509.pkix.Pkix_name_static_extension.Name_static_extension.fillFromRDNSequence(_n, _rdns);
    }
}
typedef CertificateListPointer = stdgo._internal.crypto.x509.pkix.Pkix_certificatelistpointer.CertificateListPointer;
class CertificateList_static_extension {
    static public function hasExpired(_certList:CertificateList, _now:stdgo._internal.time.Time_time.Time):Bool {
        final _certList = (_certList : stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_certificatelist.CertificateList>);
        return stdgo._internal.crypto.x509.pkix.Pkix_certificatelist_static_extension.CertificateList_static_extension.hasExpired(_certList, _now);
    }
}
typedef TBSCertificateListPointer = stdgo._internal.crypto.x509.pkix.Pkix_tbscertificatelistpointer.TBSCertificateListPointer;
class TBSCertificateList_static_extension {

}
typedef RevokedCertificatePointer = stdgo._internal.crypto.x509.pkix.Pkix_revokedcertificatepointer.RevokedCertificatePointer;
class RevokedCertificate_static_extension {

}
typedef RDNSequencePointer = stdgo._internal.crypto.x509.pkix.Pkix_rdnsequencepointer.RDNSequencePointer;
class RDNSequence_static_extension {
    static public function string(_r:RDNSequence):String {
        return stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence_static_extension.RDNSequence_static_extension.string(_r);
    }
}
typedef RelativeDistinguishedNameSETPointer = stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednamesetpointer.RelativeDistinguishedNameSETPointer;
class RelativeDistinguishedNameSET_static_extension {

}
/**
    * Package pkix contains shared, low level structures used for ASN.1 parsing
    * and serialization of X.509 certificates, CRL and OCSP.
**/
class Pkix {

}
