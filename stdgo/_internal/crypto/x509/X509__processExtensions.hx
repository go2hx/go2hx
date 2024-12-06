package stdgo._internal.crypto.x509;
function _processExtensions(_out:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>):stdgo.Error {
        var _err:stdgo.Error = (null : stdgo.Error);
        for (__1 => _e in _out.extensions) {
            var _unhandled = (false : Bool);
            if (((((_e.id.length) == ((4 : stdgo.GoInt)) && _e.id[(0 : stdgo.GoInt)] == ((2 : stdgo.GoInt)) : Bool) && _e.id[(1 : stdgo.GoInt)] == ((5 : stdgo.GoInt)) : Bool) && (_e.id[(2 : stdgo.GoInt)] == (29 : stdgo.GoInt)) : Bool)) {
                {
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _e.id[(3 : stdgo.GoInt)];
                            if (__value__ == ((15 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseKeyUsageExtension._parseKeyUsageExtension(_e.value);
                                    _out.keyUsage = __tmp__._0;
                                    _err = __tmp__._1;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                break;
                            } else if (__value__ == ((19 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseBasicConstraintsExtension._parseBasicConstraintsExtension(_e.value);
                                    _out.isCA = __tmp__._0;
                                    _out.maxPathLen = __tmp__._1;
                                    _err = __tmp__._2;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                _out.basicConstraintsValid = true;
                                _out.maxPathLenZero = _out.maxPathLen == ((0 : stdgo.GoInt));
                                break;
                            } else if (__value__ == ((17 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseSANExtension._parseSANExtension(_e.value);
                                    _out.dnsnames = __tmp__._0;
                                    _out.emailAddresses = __tmp__._1;
                                    _out.ipaddresses = __tmp__._2;
                                    _out.uris = __tmp__._3;
                                    _err = __tmp__._4;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                if (((((_out.dnsnames.length) == ((0 : stdgo.GoInt)) && (_out.emailAddresses.length) == ((0 : stdgo.GoInt)) : Bool) && (_out.ipaddresses.length) == ((0 : stdgo.GoInt)) : Bool) && (_out.uris.length == (0 : stdgo.GoInt)) : Bool)) {
                                    _unhandled = true;
                                };
                                break;
                            } else if (__value__ == ((30 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseNameConstraintsExtension._parseNameConstraintsExtension(_out, _e?.__copy__());
                                    _unhandled = __tmp__._0;
                                    _err = __tmp__._1;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                break;
                            } else if (__value__ == ((31 : stdgo.GoInt))) {
                                var _val = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                                if (!_val.readASN1((stdgo.Go.setRef(_val) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution points" : stdgo.GoString));
                                };
                                while (!_val.empty()) {
                                    var _dpDER:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                                    if (!_val.readASN1((stdgo.Go.setRef(_dpDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                    };
                                    var _dpNameDER:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                                    var _dpNamePresent:Bool = false;
                                    var _dpNamePresent__pointer__ = stdgo.Go.pointer(_dpNamePresent);
                                    if (!_dpDER.readOptionalASN1((stdgo.Go.setRef(_dpNameDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), _dpNamePresent__pointer__, (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).constructed().contextSpecific())) {
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                    };
                                    if (!_dpNamePresent) {
                                        continue;
                                    };
                                    if (!_dpNameDER.readASN1((stdgo.Go.setRef(_dpNameDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).constructed().contextSpecific())) {
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                    };
                                    while (!_dpNameDER.empty()) {
                                        if (!_dpNameDER.peekASN1Tag((6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific())) {
                                            break;
                                        };
                                        var _uri:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                                        if (!_dpNameDER.readASN1((stdgo.Go.setRef(_uri) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific())) {
                                            return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                        };
                                        _out.crldistributionPoints = (_out.crldistributionPoints.__append__((_uri : stdgo.GoString)?.__copy__()));
                                    };
                                };
                                break;
                            } else if (__value__ == ((35 : stdgo.GoInt))) {
                                var _val = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                                var _akid:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                                if (!_val.readASN1((stdgo.Go.setRef(_akid) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority key identifier" : stdgo.GoString));
                                };
                                if (_akid.peekASN1Tag((0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific())) {
                                    if (!_akid.readASN1((stdgo.Go.setRef(_akid) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific())) {
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority key identifier" : stdgo.GoString));
                                    };
                                    _out.authorityKeyId = _akid;
                                };
                                break;
                            } else if (__value__ == ((37 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseExtKeyUsageExtension._parseExtKeyUsageExtension(_e.value);
                                    _out.extKeyUsage = __tmp__._0;
                                    _out.unknownExtKeyUsage = __tmp__._1;
                                    _err = __tmp__._2;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                break;
                            } else if (__value__ == ((14 : stdgo.GoInt))) {
                                var _val = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                                var _skid:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                                if (!_val.readASN1((stdgo.Go.setRef(_skid) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (4 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid subject key identifier" : stdgo.GoString));
                                };
                                _out.subjectKeyId = _skid;
                                break;
                            } else if (__value__ == ((32 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseCertificatePoliciesExtension._parseCertificatePoliciesExtension(_e.value);
                                    _out.policyIdentifiers = __tmp__._0;
                                    _err = __tmp__._1;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                break;
                            } else {
                                _unhandled = true;
                            };
                        };
                        break;
                    };
                };
            } else if (_e.id.equal(stdgo._internal.crypto.x509.X509__oidExtensionAuthorityInfoAccess._oidExtensionAuthorityInfoAccess)) {
                var _val = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                if (!_val.readASN1((stdgo.Go.setRef(_val) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                };
                while (!_val.empty()) {
                    var _aiaDER:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                    if (!_val.readASN1((stdgo.Go.setRef(_aiaDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag))) {
                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                    };
                    var _method:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = new stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier(0, 0);
                    if (!_aiaDER.readASN1ObjectIdentifier((stdgo.Go.setRef(_method) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier>))) {
                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                    };
                    if (!_aiaDER.peekASN1Tag((6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific())) {
                        continue;
                    };
                    if (!_aiaDER.readASN1((stdgo.Go.setRef(_aiaDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific())) {
                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                    };
                    if (_method.equal(stdgo._internal.crypto.x509.X509__oidAuthorityInfoAccessOcsp._oidAuthorityInfoAccessOcsp)) {
                        _out.ocspserver = (_out.ocspserver.__append__((_aiaDER : stdgo.GoString)?.__copy__()));
                    } else if (_method.equal(stdgo._internal.crypto.x509.X509__oidAuthorityInfoAccessIssuers._oidAuthorityInfoAccessIssuers)) {
                        _out.issuingCertificateURL = (_out.issuingCertificateURL.__append__((_aiaDER : stdgo.GoString)?.__copy__()));
                    };
                };
            } else {
                _unhandled = true;
            };
            if ((_e.critical && _unhandled : Bool)) {
                _out.unhandledCriticalExtensions = (_out.unhandledCriticalExtensions.__append__(_e.id));
            };
        };
        return (null : stdgo.Error);
    }
