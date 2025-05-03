package stdgo._internal.crypto.x509.pkix;
@:keep @:allow(stdgo._internal.crypto.x509.pkix.Pkix.Name_asInterface) class Name_static_extension {
    @:keep
    @:tdfield
    static public function string( _n:stdgo._internal.crypto.x509.pkix.Pkix_name.Name):stdgo.GoString {
        @:recv var _n:stdgo._internal.crypto.x509.pkix.Pkix_name.Name = _n?.__copy__();
        var _rdns:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence = (new stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L253"
        if (_n.extraNames == null) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L254"
            for (__0 => _atv in _n.names) {
                var _t = (_atv.type : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L256"
                if (((((_t.length) == ((4 : stdgo.GoInt)) && _t[(0 : stdgo.GoInt)] == ((2 : stdgo.GoInt)) : Bool) && _t[(1 : stdgo.GoInt)] == ((5 : stdgo.GoInt)) : Bool) && (_t[(2 : stdgo.GoInt)] == (4 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L257"
                    {
                        final __value__ = _t[(3 : stdgo.GoInt)];
                        if (__value__ == ((3 : stdgo.GoInt)) || __value__ == ((5 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt)) || __value__ == ((10 : stdgo.GoInt)) || __value__ == ((11 : stdgo.GoInt)) || __value__ == ((17 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L260"
                            continue;
                        };
                    };
                };
                _rdns = (_rdns.__append__((new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>(1, 1, ...[_atv?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue)])) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>)) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
            };
        };
        _rdns = (_rdns.__append__(...(_n.toRDNSequence() : Array<stdgo._internal.crypto.x509.pkix.Pkix_relativedistinguishednameset.RelativeDistinguishedNameSET>)) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L269"
        return (_rdns.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function toRDNSequence( _n:stdgo._internal.crypto.x509.pkix.Pkix_name.Name):stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence {
        @:recv var _n:stdgo._internal.crypto.x509.pkix.Pkix_name.Name = _n?.__copy__();
        var _ret = (new stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence(0, 0) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        _ret = _n._appendRDNs(_ret, _n.country, stdgo._internal.crypto.x509.pkix.Pkix__oidcountry._oidCountry);
        _ret = _n._appendRDNs(_ret, _n.province, stdgo._internal.crypto.x509.pkix.Pkix__oidprovince._oidProvince);
        _ret = _n._appendRDNs(_ret, _n.locality, stdgo._internal.crypto.x509.pkix.Pkix__oidlocality._oidLocality);
        _ret = _n._appendRDNs(_ret, _n.streetAddress, stdgo._internal.crypto.x509.pkix.Pkix__oidstreetaddress._oidStreetAddress);
        _ret = _n._appendRDNs(_ret, _n.postalCode, stdgo._internal.crypto.x509.pkix.Pkix__oidpostalcode._oidPostalCode);
        _ret = _n._appendRDNs(_ret, _n.organization, stdgo._internal.crypto.x509.pkix.Pkix__oidorganization._oidOrganization);
        _ret = _n._appendRDNs(_ret, _n.organizationalUnit, stdgo._internal.crypto.x509.pkix.Pkix__oidorganizationalunit._oidOrganizationalUnit);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L234"
        if (((_n.commonName.length) > (0 : stdgo.GoInt) : Bool)) {
            _ret = _n._appendRDNs(_ret, (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_n.commonName?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo._internal.crypto.x509.pkix.Pkix__oidcommonname._oidCommonName);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L237"
        if (((_n.serialNumber.length) > (0 : stdgo.GoInt) : Bool)) {
            _ret = _n._appendRDNs(_ret, (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_n.serialNumber?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo._internal.crypto.x509.pkix.Pkix__oidserialnumber._oidSerialNumber);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L240"
        for (__0 => _atv in _n.extraNames) {
            _ret = (_ret.__append__((new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>(1, 1, ...[_atv?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue)])) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>)) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L244"
        return _ret;
    }
    @:keep
    @:tdfield
    static public function _appendRDNs( _n:stdgo._internal.crypto.x509.pkix.Pkix_name.Name, _in:stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence, _values:stdgo.Slice<stdgo.GoString>, _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence {
        @:recv var _n:stdgo._internal.crypto.x509.pkix.Pkix_name.Name = _n?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L201"
        if (((_values.length == (0 : stdgo.GoInt)) || stdgo._internal.crypto.x509.pkix.Pkix__oidinattributetypeandvalue._oidInAttributeTypeAndValue(_oid, _n.extraNames) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L202"
            return _in;
        };
        var _s = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>((_values.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_values.length : stdgo.GoInt).toBasic() > 0 ? (_values.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L206"
        for (_i => _value in _values) {
            _s[(_i : stdgo.GoInt)].type = _oid;
            _s[(_i : stdgo.GoInt)].value = stdgo.Go.toInterface(_value);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L211"
        return (_in.__append__(_s) : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence);
    }
    @:keep
    @:tdfield
    static public function fillFromRDNSequence( _n:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_name.Name>, _rdns:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_name.Name> = _n;
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L145"
        for (__0 => _rdn in (_rdns : stdgo._internal.crypto.x509.pkix.Pkix_rdnsequence.RDNSequence)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L146"
            if ((_rdn.length) == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L147"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L150"
            for (__1 => _atv in _rdn) {
                (@:checkr _n ?? throw "null pointer dereference").names = ((@:checkr _n ?? throw "null pointer dereference").names.__append__(_atv?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_attributetypeandvalue.AttributeTypeAndValue>);
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_atv.value : stdgo.GoString)) : stdgo.GoString), _1 : true };
                } catch(_) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                }, _value = __tmp__._0, _ok = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L153"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L154"
                    continue;
                };
                var _t = (_atv.type : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L158"
                if (((((_t.length) == ((4 : stdgo.GoInt)) && _t[(0 : stdgo.GoInt)] == ((2 : stdgo.GoInt)) : Bool) && _t[(1 : stdgo.GoInt)] == ((5 : stdgo.GoInt)) : Bool) && (_t[(2 : stdgo.GoInt)] == (4 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/pkix/pkix.go#L159"
                    {
                        final __value__ = _t[(3 : stdgo.GoInt)];
                        if (__value__ == ((3 : stdgo.GoInt))) {
                            (@:checkr _n ?? throw "null pointer dereference").commonName = _value?.__copy__();
                        } else if (__value__ == ((5 : stdgo.GoInt))) {
                            (@:checkr _n ?? throw "null pointer dereference").serialNumber = _value?.__copy__();
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            (@:checkr _n ?? throw "null pointer dereference").country = ((@:checkr _n ?? throw "null pointer dereference").country.__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        } else if (__value__ == ((7 : stdgo.GoInt))) {
                            (@:checkr _n ?? throw "null pointer dereference").locality = ((@:checkr _n ?? throw "null pointer dereference").locality.__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            (@:checkr _n ?? throw "null pointer dereference").province = ((@:checkr _n ?? throw "null pointer dereference").province.__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        } else if (__value__ == ((9 : stdgo.GoInt))) {
                            (@:checkr _n ?? throw "null pointer dereference").streetAddress = ((@:checkr _n ?? throw "null pointer dereference").streetAddress.__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        } else if (__value__ == ((10 : stdgo.GoInt))) {
                            (@:checkr _n ?? throw "null pointer dereference").organization = ((@:checkr _n ?? throw "null pointer dereference").organization.__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            (@:checkr _n ?? throw "null pointer dereference").organizationalUnit = ((@:checkr _n ?? throw "null pointer dereference").organizationalUnit.__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        } else if (__value__ == ((17 : stdgo.GoInt))) {
                            (@:checkr _n ?? throw "null pointer dereference").postalCode = ((@:checkr _n ?? throw "null pointer dereference").postalCode.__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        };
                    };
                };
            };
        };
    }
}
