package stdgo._internal.crypto.x509.pkix;
@:structInit @:using(stdgo._internal.crypto.x509.pkix.Pkix_name_static_extension.Name_static_extension) class Name {
    public var country : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var organization : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var organizationalUnit : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var locality : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var province : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var streetAddress : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var postalCode : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var serialNumber : stdgo.GoString = "";
    public var commonName : stdgo.GoString = "";
    public var names : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
    public var extraNames : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue> = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
    public function new(?country:stdgo.Slice<stdgo.GoString>, ?organization:stdgo.Slice<stdgo.GoString>, ?organizationalUnit:stdgo.Slice<stdgo.GoString>, ?locality:stdgo.Slice<stdgo.GoString>, ?province:stdgo.Slice<stdgo.GoString>, ?streetAddress:stdgo.Slice<stdgo.GoString>, ?postalCode:stdgo.Slice<stdgo.GoString>, ?serialNumber:stdgo.GoString, ?commonName:stdgo.GoString, ?names:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>, ?extraNames:stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>) {
        if (country != null) this.country = country;
        if (organization != null) this.organization = organization;
        if (organizationalUnit != null) this.organizationalUnit = organizationalUnit;
        if (locality != null) this.locality = locality;
        if (province != null) this.province = province;
        if (streetAddress != null) this.streetAddress = streetAddress;
        if (postalCode != null) this.postalCode = postalCode;
        if (serialNumber != null) this.serialNumber = serialNumber;
        if (commonName != null) this.commonName = commonName;
        if (names != null) this.names = names;
        if (extraNames != null) this.extraNames = extraNames;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Name(
country,
organization,
organizationalUnit,
locality,
province,
streetAddress,
postalCode,
serialNumber,
commonName,
names,
extraNames);
    }
}
