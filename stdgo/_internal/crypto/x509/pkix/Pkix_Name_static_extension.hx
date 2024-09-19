package stdgo._internal.crypto.x509.pkix;
@:keep @:allow(stdgo._internal.crypto.x509.pkix.Pkix.Name_asInterface) class Name_static_extension {
    @:keep
    static public function string( _n:stdgo._internal.crypto.x509.pkix.Pkix_Name.Name):stdgo.GoString {
        @:recv var _n:stdgo._internal.crypto.x509.pkix.Pkix_Name.Name = _n?.__copy__();
        var _rdns:stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence = new stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence(0, 0);
        if (_n.extraNames == null) {
            for (__0 => _atv in _n.names) {
                var _t = (_atv.type : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier);
                if (((((_t.length) == ((4 : stdgo.GoInt)) && _t[(0 : stdgo.GoInt)] == ((2 : stdgo.GoInt)) : Bool) && _t[(1 : stdgo.GoInt)] == ((5 : stdgo.GoInt)) : Bool) && (_t[(2 : stdgo.GoInt)] == (4 : stdgo.GoInt)) : Bool)) {
                    {
                        final __value__ = _t[(3 : stdgo.GoInt)];
                        if (__value__ == ((3 : stdgo.GoInt)) || __value__ == ((5 : stdgo.GoInt)) || __value__ == ((6 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt)) || __value__ == ((9 : stdgo.GoInt)) || __value__ == ((10 : stdgo.GoInt)) || __value__ == ((11 : stdgo.GoInt)) || __value__ == ((17 : stdgo.GoInt))) {
                            continue;
                        };
                    };
                };
                _rdns = (_rdns.__append__((new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>(1, 1, ...[_atv?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue)])) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>)));
            };
        };
        _rdns = (_rdns.__append__(...(_n.toRDNSequence() : Array<stdgo._internal.crypto.x509.pkix.Pkix_RelativeDistinguishedNameSET.RelativeDistinguishedNameSET>)));
        return (_rdns.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function toRDNSequence( _n:stdgo._internal.crypto.x509.pkix.Pkix_Name.Name):stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence {
        @:recv var _n:stdgo._internal.crypto.x509.pkix.Pkix_Name.Name = _n?.__copy__();
        var _ret = new stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence(0, 0);
        _ret = _n._appendRDNs(_ret, _n.country, stdgo._internal.crypto.x509.pkix.Pkix__oidCountry._oidCountry);
        _ret = _n._appendRDNs(_ret, _n.province, stdgo._internal.crypto.x509.pkix.Pkix__oidProvince._oidProvince);
        _ret = _n._appendRDNs(_ret, _n.locality, stdgo._internal.crypto.x509.pkix.Pkix__oidLocality._oidLocality);
        _ret = _n._appendRDNs(_ret, _n.streetAddress, stdgo._internal.crypto.x509.pkix.Pkix__oidStreetAddress._oidStreetAddress);
        _ret = _n._appendRDNs(_ret, _n.postalCode, stdgo._internal.crypto.x509.pkix.Pkix__oidPostalCode._oidPostalCode);
        _ret = _n._appendRDNs(_ret, _n.organization, stdgo._internal.crypto.x509.pkix.Pkix__oidOrganization._oidOrganization);
        _ret = _n._appendRDNs(_ret, _n.organizationalUnit, stdgo._internal.crypto.x509.pkix.Pkix__oidOrganizationalUnit._oidOrganizationalUnit);
        if (((_n.commonName.length) > (0 : stdgo.GoInt) : Bool)) {
            _ret = _n._appendRDNs(_ret, (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_n.commonName?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo._internal.crypto.x509.pkix.Pkix__oidCommonName._oidCommonName);
        };
        if (((_n.serialNumber.length) > (0 : stdgo.GoInt) : Bool)) {
            _ret = _n._appendRDNs(_ret, (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_n.serialNumber?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), stdgo._internal.crypto.x509.pkix.Pkix__oidSerialNumber._oidSerialNumber);
        };
        for (__0 => _atv in _n.extraNames) {
            _ret = (_ret.__append__((new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>(1, 1, ...[_atv?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue)])) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>)));
        };
        return _ret;
    }
    @:keep
    static public function _appendRDNs( _n:stdgo._internal.crypto.x509.pkix.Pkix_Name.Name, _in:stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence, _values:stdgo.Slice<stdgo.GoString>, _oid:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence {
        @:recv var _n:stdgo._internal.crypto.x509.pkix.Pkix_Name.Name = _n?.__copy__();
        if (((_values.length == (0 : stdgo.GoInt)) || stdgo._internal.crypto.x509.pkix.Pkix__oidInAttributeTypeAndValue._oidInAttributeTypeAndValue(_oid, _n.extraNames) : Bool)) {
            return _in;
        };
        var _s = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>((_values.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_values.length : stdgo.GoInt).toBasic() > 0 ? (_values.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_AttributeTypeAndValue.AttributeTypeAndValue>);
        for (_i => _value in _values) {
            _s[(_i : stdgo.GoInt)].type = _oid;
            _s[(_i : stdgo.GoInt)].value = stdgo.Go.toInterface(_value);
        };
        return (_in.__append__(_s));
    }
    @:keep
    static public function fillFromRDNSequence( _n:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Name.Name>, _rdns:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.crypto.x509.pkix.Pkix_Name.Name> = _n;
        for (__0 => _rdn in (_rdns : stdgo._internal.crypto.x509.pkix.Pkix_RDNSequence.RDNSequence)) {
            if ((_rdn.length) == ((0 : stdgo.GoInt))) {
                continue;
            };
            for (__1 => _atv in _rdn) {
                _n.names = (_n.names.__append__(_atv?.__copy__()));
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_atv.value : stdgo.GoString)) : stdgo.GoString), _1 : true };
                } catch(_) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                }, _value = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    continue;
                };
                var _t = (_atv.type : stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier);
                if (((((_t.length) == ((4 : stdgo.GoInt)) && _t[(0 : stdgo.GoInt)] == ((2 : stdgo.GoInt)) : Bool) && _t[(1 : stdgo.GoInt)] == ((5 : stdgo.GoInt)) : Bool) && (_t[(2 : stdgo.GoInt)] == (4 : stdgo.GoInt)) : Bool)) {
                    {
                        final __value__ = _t[(3 : stdgo.GoInt)];
                        if (__value__ == ((3 : stdgo.GoInt))) {
                            _n.commonName = _value?.__copy__();
                        } else if (__value__ == ((5 : stdgo.GoInt))) {
                            _n.serialNumber = _value?.__copy__();
                        } else if (__value__ == ((6 : stdgo.GoInt))) {
                            _n.country = (_n.country.__append__(_value?.__copy__()));
                        } else if (__value__ == ((7 : stdgo.GoInt))) {
                            _n.locality = (_n.locality.__append__(_value?.__copy__()));
                        } else if (__value__ == ((8 : stdgo.GoInt))) {
                            _n.province = (_n.province.__append__(_value?.__copy__()));
                        } else if (__value__ == ((9 : stdgo.GoInt))) {
                            _n.streetAddress = (_n.streetAddress.__append__(_value?.__copy__()));
                        } else if (__value__ == ((10 : stdgo.GoInt))) {
                            _n.organization = (_n.organization.__append__(_value?.__copy__()));
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            _n.organizationalUnit = (_n.organizationalUnit.__append__(_value?.__copy__()));
                        } else if (__value__ == ((17 : stdgo.GoInt))) {
                            _n.postalCode = (_n.postalCode.__append__(_value?.__copy__()));
                        };
                    };
                };
            };
        };
    }
}
