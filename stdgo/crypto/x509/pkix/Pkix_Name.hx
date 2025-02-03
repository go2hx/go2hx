package stdgo.crypto.x509.pkix;
@:structInit @:using(stdgo.crypto.x509.pkix.Pkix.Name_static_extension) abstract Name(stdgo._internal.crypto.x509.pkix.Pkix_Name.Name) from stdgo._internal.crypto.x509.pkix.Pkix_Name.Name to stdgo._internal.crypto.x509.pkix.Pkix_Name.Name {
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
        this.names = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>);
        return v;
    }
    public var extraNames(get, set) : Array<AttributeTypeAndValue>;
    function get_extraNames():Array<AttributeTypeAndValue> return [for (i in this.extraNames) i];
    function set_extraNames(v:Array<AttributeTypeAndValue>):Array<AttributeTypeAndValue> {
        this.extraNames = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>);
        return v;
    }
    public function new(?country:Array<String>, ?organization:Array<String>, ?organizationalUnit:Array<String>, ?locality:Array<String>, ?province:Array<String>, ?streetAddress:Array<String>, ?postalCode:Array<String>, ?serialNumber:String, ?commonName:String, ?names:Array<AttributeTypeAndValue>, ?extraNames:Array<AttributeTypeAndValue>) this = new stdgo._internal.crypto.x509.pkix.Pkix_Name.Name(
([for (i in country) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in organization) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in organizationalUnit) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in locality) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in province) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in streetAddress) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
([for (i in postalCode) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>),
(serialNumber : stdgo.GoString),
(commonName : stdgo.GoString),
([for (i in names) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>),
([for (i in extraNames) i] : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
