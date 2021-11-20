package crypto.x509.pkix;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class AlgorithmIdentifier {
    public var algorithm : stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
    @:tag("asn1:\"optional\"")
    public var parameters : stdgo.encoding.asn1.Asn1.RawValue = new stdgo.encoding.asn1.Asn1.RawValue();
    public function new(?algorithm:stdgo.encoding.asn1.Asn1.ObjectIdentifier, ?parameters:stdgo.encoding.asn1.Asn1.RawValue) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(algorithm) + " " + Go.string(parameters) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AlgorithmIdentifier(algorithm, parameters);
    }
    public function __set__(__tmp__) {
        this.algorithm = __tmp__.algorithm;
        this.parameters = __tmp__.parameters;
        return this;
    }
}
@:named class RDNSequence {
    public function toString():GoString {
        var _r = this.__copy__();
        var _s:GoString = "";
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _r.__t__.length, _i++, {
                var _rdn:RelativeDistinguishedNameSET = _r.__t__[_r.__t__.length - ((1 : GoInt)) - _i].__copy__();
                if (_i > ((0 : GoInt))) {
                    _s = _s + (",");
                };
                {
                    var _j;
                    var _tv;
                    for (_obj in _rdn.__t__.keyValueIterator()) {
                        _j = _obj.key;
                        _tv = _obj.value;
                        if (_j > ((0 : GoInt))) {
                            _s = _s + ("+");
                        };
                        var _oidString:GoString = _tv.type.toString();
                        var __tmp__ = _attributeTypeNames.exists(_oidString) ? { value : _attributeTypeNames[_oidString], ok : true } : { value : _attributeTypeNames.defaultValue(), ok : false }, _typeName:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                        if (!_ok) {
                            var __tmp__ = stdgo.encoding.asn1.Asn1.marshal(Go.toInterface(_tv.value)), _derBytes:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            if (_err == null) {
                                _s = _s + (_oidString + (("=#" : GoString)) + stdgo.encoding.hex.Hex.encodeToString(_derBytes));
                                continue;
                            };
                            _typeName = _oidString;
                        };
                        var _valueString:GoString = stdgo.fmt.Fmt.sprint(_tv.value);
                        var _escaped:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]).setCap(((_valueString.length : GoInt)).toBasic());
                        {
                            var _k;
                            var _c;
                            for (_obj in _valueString.keyValueIterator()) {
                                _k = _obj.key;
                                _c = _obj.value;
                                var _escape:Bool = false;
                                if (_c == ((",".code : GoRune)) || _c == (("+".code : GoRune)) || _c == (("\"".code : GoRune)) || _c == (("\\".code : GoRune)) || _c == (("<".code : GoRune)) || _c == ((">".code : GoRune)) || _c == ((";".code : GoRune))) {
                                    _escape = true;
                                } else if (_c == ((" ".code : GoRune))) {
                                    _escape = _k == ((0 : GoInt)) || _k == _valueString.length - ((1 : GoInt));
                                } else if (_c == (("#".code : GoRune))) {
                                    _escape = _k == ((0 : GoInt));
                                };
                                if (_escape) {
                                    _escaped = _escaped.__append__((("\\".code : GoRune)), _c);
                                } else {
                                    _escaped = _escaped.__append__(_c);
                                };
                            };
                        };
                        _s = _s + (_typeName + (("=" : GoString)) + ((_escaped : GoString)));
                    };
                };
            });
        };
        return _s;
    }
    public var __t__ : Slice<RelativeDistinguishedNameSET>;
    public function new(?t:Slice<RelativeDistinguishedNameSET>) {
        __t__ = t == null ? new Slice<RelativeDistinguishedNameSET>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new RDNSequence(__t__);
    public function __append__(args:haxe.Rest<RelativeDistinguishedNameSET>) return new RDNSequence(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new RDNSequence(this.__t__.__slice__(low, high));
}
@:named class RelativeDistinguishedNameSET {
    public var __t__ : Slice<AttributeTypeAndValue>;
    public function new(?t:Slice<AttributeTypeAndValue>) {
        __t__ = t == null ? new Slice<AttributeTypeAndValue>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new RelativeDistinguishedNameSET(__t__);
    public function __append__(args:haxe.Rest<AttributeTypeAndValue>) return new RelativeDistinguishedNameSET(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new RelativeDistinguishedNameSET(this.__t__.__slice__(low, high));
}
@:structInit class AttributeTypeAndValue {
    public var type : stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
    public var value : AnyInterface = ((null : AnyInterface));
    public function new(?type:stdgo.encoding.asn1.Asn1.ObjectIdentifier, ?value:AnyInterface) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + " " + Go.string(value) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AttributeTypeAndValue(type, value);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        this.value = __tmp__.value;
        return this;
    }
}
@:structInit class AttributeTypeAndValueSET {
    public var type : stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
    @:tag("asn1:\"set\"")
    public var value : Slice<Slice<AttributeTypeAndValue>> = new Slice<Slice<AttributeTypeAndValue>>().nil();
    public function new(?type:stdgo.encoding.asn1.Asn1.ObjectIdentifier, ?value:Slice<Slice<AttributeTypeAndValue>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + " " + Go.string(value) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new AttributeTypeAndValueSET(type, value);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        this.value = __tmp__.value;
        return this;
    }
}
@:structInit class Extension {
    public var id : stdgo.encoding.asn1.Asn1.ObjectIdentifier = new stdgo.encoding.asn1.Asn1.ObjectIdentifier();
    @:tag("asn1:\"optional\"")
    public var critical : Bool = false;
    public var value : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?id:stdgo.encoding.asn1.Asn1.ObjectIdentifier, ?critical:Bool, ?value:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(id) + " " + Go.string(critical) + " " + Go.string(value) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Extension(id, critical, value);
    }
    public function __set__(__tmp__) {
        this.id = __tmp__.id;
        this.critical = __tmp__.critical;
        this.value = __tmp__.value;
        return this;
    }
}
@:structInit class Name {
    public function toString():GoString {
        var _n = this.__copy__();
        var _rdns:RDNSequence = new RDNSequence();
        if (_n.extraNames == null || _n.extraNames.isNil()) {
            for (_atv in _n.names) {
                var _t:stdgo.encoding.asn1.Asn1.ObjectIdentifier = _atv.type.__copy__();
                if (_t.__t__.length == ((4 : GoInt)) && _t.__t__[((0 : GoInt))] == ((2 : GoInt)) && _t.__t__[((1 : GoInt))] == ((5 : GoInt)) && _t.__t__[((2 : GoInt))] == ((4 : GoInt))) {
                    if (_t.__t__[((3 : GoInt))] == ((3 : GoInt)) || _t.__t__[((3 : GoInt))] == ((5 : GoInt)) || _t.__t__[((3 : GoInt))] == ((6 : GoInt)) || _t.__t__[((3 : GoInt))] == ((7 : GoInt)) || _t.__t__[((3 : GoInt))] == ((8 : GoInt)) || _t.__t__[((3 : GoInt))] == ((9 : GoInt)) || _t.__t__[((3 : GoInt))] == ((10 : GoInt)) || _t.__t__[((3 : GoInt))] == ((11 : GoInt)) || _t.__t__[((3 : GoInt))] == ((17 : GoInt))) {
                        continue;
                    };
                };
                _rdns = _rdns.__append__(new Slice<AttributeTypeAndValue>(_atv.__copy__())).__copy__();
            };
        };
        _rdns = _rdns.__append__(..._n.toRDNSequence().__t__.toArray()).__copy__();
        return _rdns.toString();
    }
    public function toRDNSequence():RDNSequence {
        var _n = this.__copy__();
        var _ret:RDNSequence = new RDNSequence();
        _ret = _n._appendRDNs(_ret.__copy__(), _n.country, new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidCountry)).__copy__();
        _ret = _n._appendRDNs(_ret.__copy__(), _n.province, new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidProvince)).__copy__();
        _ret = _n._appendRDNs(_ret.__copy__(), _n.locality, new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidLocality)).__copy__();
        _ret = _n._appendRDNs(_ret.__copy__(), _n.streetAddress, new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidStreetAddress)).__copy__();
        _ret = _n._appendRDNs(_ret.__copy__(), _n.postalCode, new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidPostalCode)).__copy__();
        _ret = _n._appendRDNs(_ret.__copy__(), _n.organization, new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidOrganization)).__copy__();
        _ret = _n._appendRDNs(_ret.__copy__(), _n.organizationalUnit, new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidOrganizationalUnit)).__copy__();
        if (_n.commonName.length > ((0 : GoInt))) {
            _ret = _n._appendRDNs(_ret.__copy__(), new Slice<GoString>(_n.commonName), new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidCommonName)).__copy__();
        };
        if (_n.serialNumber.length > ((0 : GoInt))) {
            _ret = _n._appendRDNs(_ret.__copy__(), new Slice<GoString>(_n.serialNumber), new stdgo.encoding.asn1.Asn1.ObjectIdentifier(_oidSerialNumber)).__copy__();
        };
        for (_atv in _n.extraNames) {
            _ret = _ret.__append__(new Slice<AttributeTypeAndValue>(_atv.__copy__())).__copy__();
        };
        return _ret.__copy__();
    }
    public function _appendRDNs(_in:RDNSequence, _values:Slice<GoString>, _oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):RDNSequence {
        var _n = this.__copy__();
        if (_values.length == ((0 : GoInt)) || _oidInAttributeTypeAndValue(_oid.__copy__(), _n.extraNames)) {
            return _in.__copy__();
        };
        var _s:Slice<AttributeTypeAndValue> = new Slice<AttributeTypeAndValue>(...[for (i in 0 ... ((_values.length : GoInt)).toBasic()) new AttributeTypeAndValue()]);
        {
            var _i;
            var _value;
            for (_obj in _values.keyValueIterator()) {
                _i = _obj.key;
                _value = _obj.value;
                _s[_i].type = _oid.__copy__();
                _s[_i].value = Go.toInterface(_value);
            };
        };
        return _in.__append__(_s).__copy__();
    }
    public function fillFromRDNSequence(_rdns:Pointer<RDNSequence>):Void {
        var _n = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_rdn in _rdns.value.__t__) {
            if (_rdn.__t__.length == ((0 : GoInt))) {
                continue;
            };
            for (_atv in _rdn.__t__) {
                _n.value.names = _n.value.names.__append__(_atv.__copy__());
                var __tmp__ = try {
                    { value : ((_atv.value.value : GoString)), ok : true };
                } catch(_) {
                    { value : (("" : GoString)), ok : false };
                }, _value = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    continue;
                };
                var _t:stdgo.encoding.asn1.Asn1.ObjectIdentifier = _atv.type.__copy__();
                if (_t.__t__.length == ((4 : GoInt)) && _t.__t__[((0 : GoInt))] == ((2 : GoInt)) && _t.__t__[((1 : GoInt))] == ((5 : GoInt)) && _t.__t__[((2 : GoInt))] == ((4 : GoInt))) {
                    if (_t.__t__[((3 : GoInt))] == ((3 : GoInt))) {
                        _n.value.commonName = _value;
                    } else if (_t.__t__[((3 : GoInt))] == ((5 : GoInt))) {
                        _n.value.serialNumber = _value;
                    } else if (_t.__t__[((3 : GoInt))] == ((6 : GoInt))) {
                        _n.value.country = _n.value.country.__append__(_value);
                    } else if (_t.__t__[((3 : GoInt))] == ((7 : GoInt))) {
                        _n.value.locality = _n.value.locality.__append__(_value);
                    } else if (_t.__t__[((3 : GoInt))] == ((8 : GoInt))) {
                        _n.value.province = _n.value.province.__append__(_value);
                    } else if (_t.__t__[((3 : GoInt))] == ((9 : GoInt))) {
                        _n.value.streetAddress = _n.value.streetAddress.__append__(_value);
                    } else if (_t.__t__[((3 : GoInt))] == ((10 : GoInt))) {
                        _n.value.organization = _n.value.organization.__append__(_value);
                    } else if (_t.__t__[((3 : GoInt))] == ((11 : GoInt))) {
                        _n.value.organizationalUnit = _n.value.organizationalUnit.__append__(_value);
                    } else if (_t.__t__[((3 : GoInt))] == ((17 : GoInt))) {
                        _n.value.postalCode = _n.value.postalCode.__append__(_value);
                    };
                };
            };
        };
    }
    public var country : Slice<GoString> = new Slice<GoString>().nil();
    public var organization : Slice<GoString> = new Slice<GoString>().nil();
    public var organizationalUnit : Slice<GoString> = new Slice<GoString>().nil();
    public var locality : Slice<GoString> = new Slice<GoString>().nil();
    public var province : Slice<GoString> = new Slice<GoString>().nil();
    public var streetAddress : Slice<GoString> = new Slice<GoString>().nil();
    public var postalCode : Slice<GoString> = new Slice<GoString>().nil();
    public var serialNumber : GoString = (("" : GoString));
    public var commonName : GoString = (("" : GoString));
    public var names : Slice<AttributeTypeAndValue> = new Slice<AttributeTypeAndValue>().nil();
    public var extraNames : Slice<AttributeTypeAndValue> = new Slice<AttributeTypeAndValue>().nil();
    public function new(?country:Slice<GoString>, ?organization:Slice<GoString>, ?organizationalUnit:Slice<GoString>, ?locality:Slice<GoString>, ?province:Slice<GoString>, ?streetAddress:Slice<GoString>, ?postalCode:Slice<GoString>, ?serialNumber:GoString, ?commonName:GoString, ?names:Slice<AttributeTypeAndValue>, ?extraNames:Slice<AttributeTypeAndValue>) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
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
    public function __set__(__tmp__) {
        this.country = __tmp__.country;
        this.organization = __tmp__.organization;
        this.organizationalUnit = __tmp__.organizationalUnit;
        this.locality = __tmp__.locality;
        this.province = __tmp__.province;
        this.streetAddress = __tmp__.streetAddress;
        this.postalCode = __tmp__.postalCode;
        this.serialNumber = __tmp__.serialNumber;
        this.commonName = __tmp__.commonName;
        this.names = __tmp__.names;
        this.extraNames = __tmp__.extraNames;
        return this;
    }
}
@:structInit class CertificateList {
    public function hasExpired(_now:stdgo.time.Time.Time):Bool {
        var _certList = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return !_now.before(_certList.value.tbscertList.nextUpdate.__copy__());
    }
    public var tbscertList : TBSCertificateList = new TBSCertificateList();
    public var signatureAlgorithm : AlgorithmIdentifier = new AlgorithmIdentifier();
    public var signatureValue : stdgo.encoding.asn1.Asn1.BitString = new stdgo.encoding.asn1.Asn1.BitString();
    public function new(?tbscertList:TBSCertificateList, ?signatureAlgorithm:AlgorithmIdentifier, ?signatureValue:stdgo.encoding.asn1.Asn1.BitString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(tbscertList) + " " + Go.string(signatureAlgorithm) + " " + Go.string(signatureValue) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new CertificateList(tbscertList, signatureAlgorithm, signatureValue);
    }
    public function __set__(__tmp__) {
        this.tbscertList = __tmp__.tbscertList;
        this.signatureAlgorithm = __tmp__.signatureAlgorithm;
        this.signatureValue = __tmp__.signatureValue;
        return this;
    }
}
@:structInit class TBSCertificateList {
    public var raw : stdgo.encoding.asn1.Asn1.RawContent = new stdgo.encoding.asn1.Asn1.RawContent();
    @:tag("asn1:\"optional,default:0\"")
    public var version : GoInt = ((0 : GoInt));
    public var signature : AlgorithmIdentifier = new AlgorithmIdentifier();
    public var issuer : RDNSequence = new RDNSequence();
    public var thisUpdate : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    @:tag("asn1:\"optional\"")
    public var nextUpdate : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    @:tag("asn1:\"optional\"")
    public var revokedCertificates : Slice<RevokedCertificate> = new Slice<RevokedCertificate>().nil();
    @:tag("asn1:\"tag:0,optional,explicit\"")
    public var extensions : Slice<Extension> = new Slice<Extension>().nil();
    public function new(?raw:stdgo.encoding.asn1.Asn1.RawContent, ?version:GoInt, ?signature:AlgorithmIdentifier, ?issuer:RDNSequence, ?thisUpdate:stdgo.time.Time.Time, ?nextUpdate:stdgo.time.Time.Time, ?revokedCertificates:Slice<RevokedCertificate>, ?extensions:Slice<Extension>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(raw) + " " + Go.string(version) + " " + Go.string(signature) + " " + Go.string(issuer) + " " + Go.string(thisUpdate) + " " + Go.string(nextUpdate) + " " + Go.string(revokedCertificates) + " " + Go.string(extensions) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new TBSCertificateList(raw, version, signature, issuer, thisUpdate, nextUpdate, revokedCertificates, extensions);
    }
    public function __set__(__tmp__) {
        this.raw = __tmp__.raw;
        this.version = __tmp__.version;
        this.signature = __tmp__.signature;
        this.issuer = __tmp__.issuer;
        this.thisUpdate = __tmp__.thisUpdate;
        this.nextUpdate = __tmp__.nextUpdate;
        this.revokedCertificates = __tmp__.revokedCertificates;
        this.extensions = __tmp__.extensions;
        return this;
    }
}
@:structInit class RevokedCertificate {
    public var serialNumber : Pointer<stdgo.math.big.Big.Int_> = new Pointer<stdgo.math.big.Big.Int_>().nil();
    public var revocationTime : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    @:tag("asn1:\"optional\"")
    public var extensions : Slice<Extension> = new Slice<Extension>().nil();
    public function new(?serialNumber:Pointer<stdgo.math.big.Big.Int_>, ?revocationTime:stdgo.time.Time.Time, ?extensions:Slice<Extension>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(serialNumber) + " " + Go.string(revocationTime) + " " + Go.string(extensions) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RevokedCertificate(serialNumber, revocationTime, extensions);
    }
    public function __set__(__tmp__) {
        this.serialNumber = __tmp__.serialNumber;
        this.revocationTime = __tmp__.revocationTime;
        this.extensions = __tmp__.extensions;
        return this;
    }
}
var _oidLocality : Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((7 : GoInt)));
var _oidSerialNumber : Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((5 : GoInt)));
var _oidStreetAddress : Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((9 : GoInt)));
var _oidProvince : Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((8 : GoInt)));
var _attributeTypeNames : GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))), { key : "2.5.4.6", value : "C" }, { key : "2.5.4.10", value : "O" }, { key : "2.5.4.11", value : "OU" }, { key : "2.5.4.3", value : "CN" }, { key : "2.5.4.5", value : "SERIALNUMBER" }, { key : "2.5.4.7", value : "L" }, { key : "2.5.4.8", value : "ST" }, { key : "2.5.4.9", value : "STREET" }, { key : "2.5.4.17", value : "POSTALCODE" });
var _oidOrganization : Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((10 : GoInt)));
var _oidOrganizationalUnit : Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((11 : GoInt)));
var _oidPostalCode : Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((17 : GoInt)));
var _oidCommonName : Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((3 : GoInt)));
var _oidCountry : Slice<GoInt> = new Slice<GoInt>(((2 : GoInt)), ((5 : GoInt)), ((4 : GoInt)), ((6 : GoInt)));
/**
    // oidInAttributeTypeAndValue reports whether a type with the given OID exists
    // in atv.
**/
function _oidInAttributeTypeAndValue(_oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier, _atv:Slice<AttributeTypeAndValue>):Bool {
        for (_a in _atv) {
            if (_a.type.equal(_oid.__copy__())) {
                return true;
            };
        };
        return false;
    }
class RDNSequence_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class Name_extension_fields {
    public function fillFromRDNSequence(__tmp__, _rdns:Pointer<RDNSequence>):Void __tmp__.fillFromRDNSequence(_rdns);
    public function _appendRDNs(__tmp__, _in:RDNSequence, _values:Slice<GoString>, _oid:stdgo.encoding.asn1.Asn1.ObjectIdentifier):RDNSequence return __tmp__._appendRDNs(_in, _values, _oid);
    public function toRDNSequence(__tmp__):RDNSequence return __tmp__.toRDNSequence();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class CertificateList_extension_fields {
    public function hasExpired(__tmp__, _now:stdgo.time.Time.Time):Bool return __tmp__.hasExpired(_now);
}
