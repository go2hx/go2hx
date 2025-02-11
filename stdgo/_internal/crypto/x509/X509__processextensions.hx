package stdgo._internal.crypto.x509;
function _processExtensions(_out:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>):stdgo.Error {
        var _err:stdgo.Error = (null : stdgo.Error);
        for (__1 => _e in (@:checkr _out ?? throw "null pointer dereference").extensions) {
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
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsekeyusageextension._parseKeyUsageExtension(_e.value);
                                    (@:checkr _out ?? throw "null pointer dereference").keyUsage = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._1;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                break;
                            } else if (__value__ == ((19 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsebasicconstraintsextension._parseBasicConstraintsExtension(_e.value);
                                    (@:checkr _out ?? throw "null pointer dereference").isCA = @:tmpset0 __tmp__._0;
                                    (@:checkr _out ?? throw "null pointer dereference").maxPathLen = @:tmpset0 __tmp__._1;
                                    _err = @:tmpset0 __tmp__._2;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                (@:checkr _out ?? throw "null pointer dereference").basicConstraintsValid = true;
                                (@:checkr _out ?? throw "null pointer dereference").maxPathLenZero = (@:checkr _out ?? throw "null pointer dereference").maxPathLen == ((0 : stdgo.GoInt));
                                break;
                            } else if (__value__ == ((17 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsesanextension._parseSANExtension(_e.value);
                                    (@:checkr _out ?? throw "null pointer dereference").dNSNames = @:tmpset0 __tmp__._0;
                                    (@:checkr _out ?? throw "null pointer dereference").emailAddresses = @:tmpset0 __tmp__._1;
                                    (@:checkr _out ?? throw "null pointer dereference").iPAddresses = @:tmpset0 __tmp__._2;
                                    (@:checkr _out ?? throw "null pointer dereference").uRIs = @:tmpset0 __tmp__._3;
                                    _err = @:tmpset0 __tmp__._4;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                if ((((((@:checkr _out ?? throw "null pointer dereference").dNSNames.length) == ((0 : stdgo.GoInt)) && ((@:checkr _out ?? throw "null pointer dereference").emailAddresses.length) == ((0 : stdgo.GoInt)) : Bool) && ((@:checkr _out ?? throw "null pointer dereference").iPAddresses.length) == ((0 : stdgo.GoInt)) : Bool) && ((@:checkr _out ?? throw "null pointer dereference").uRIs.length == (0 : stdgo.GoInt)) : Bool)) {
                                    _unhandled = true;
                                };
                                break;
                            } else if (__value__ == ((30 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsenameconstraintsextension._parseNameConstraintsExtension(_out, _e?.__copy__());
                                    _unhandled = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._1;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                break;
                            } else if (__value__ == ((31 : stdgo.GoInt))) {
                                var _val = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                if (!@:check2 _val.readASN1((stdgo.Go.setRef(_val) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution points" : stdgo.GoString));
                                };
                                while (!_val.empty()) {
                                    var _dpDER:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                    if (!@:check2 _val.readASN1((stdgo.Go.setRef(_dpDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                    };
                                    var _dpNameDER:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                    var _dpNamePresent:Bool = false;
                                    var _dpNamePresent__pointer__ = stdgo.Go.pointer(_dpNamePresent);
                                    if (!@:check2 _dpDER.readOptionalASN1((stdgo.Go.setRef(_dpNameDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _dpNamePresent__pointer__, (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific())) {
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                    };
                                    if (!_dpNamePresent) {
                                        continue;
                                    };
                                    if (!@:check2 _dpNameDER.readASN1((stdgo.Go.setRef(_dpNameDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).constructed().contextSpecific())) {
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                    };
                                    while (!_dpNameDER.empty()) {
                                        if (!_dpNameDER.peekASN1Tag((6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                                            break;
                                        };
                                        var _uri:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                        if (!@:check2 _dpNameDER.readASN1((stdgo.Go.setRef(_uri) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                                            return stdgo._internal.errors.Errors_new_.new_(("x509: invalid CRL distribution point" : stdgo.GoString));
                                        };
                                        (@:checkr _out ?? throw "null pointer dereference").cRLDistributionPoints = ((@:checkr _out ?? throw "null pointer dereference").cRLDistributionPoints.__append__((_uri : stdgo.GoString)?.__copy__()));
                                    };
                                };
                                break;
                            } else if (__value__ == ((35 : stdgo.GoInt))) {
                                var _val = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                var _akid:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                if (!@:check2 _val.readASN1((stdgo.Go.setRef(_akid) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority key identifier" : stdgo.GoString));
                                };
                                if (_akid.peekASN1Tag((0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                                    if (!@:check2 _akid.readASN1((stdgo.Go.setRef(_akid) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority key identifier" : stdgo.GoString));
                                    };
                                    (@:checkr _out ?? throw "null pointer dereference").authorityKeyId = _akid;
                                };
                                break;
                            } else if (__value__ == ((37 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parseextkeyusageextension._parseExtKeyUsageExtension(_e.value);
                                    (@:checkr _out ?? throw "null pointer dereference").extKeyUsage = @:tmpset0 __tmp__._0;
                                    (@:checkr _out ?? throw "null pointer dereference").unknownExtKeyUsage = @:tmpset0 __tmp__._1;
                                    _err = @:tmpset0 __tmp__._2;
                                };
                                if (_err != null) {
                                    return _err;
                                };
                                break;
                            } else if (__value__ == ((14 : stdgo.GoInt))) {
                                var _val = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                var _skid:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                if (!@:check2 _val.readASN1((stdgo.Go.setRef(_skid) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (4 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid subject key identifier" : stdgo.GoString));
                                };
                                (@:checkr _out ?? throw "null pointer dereference").subjectKeyId = _skid;
                                break;
                            } else if (__value__ == ((32 : stdgo.GoInt))) {
                                {
                                    var __tmp__ = stdgo._internal.crypto.x509.X509__parsecertificatepoliciesextension._parseCertificatePoliciesExtension(_e.value);
                                    (@:checkr _out ?? throw "null pointer dereference").policyIdentifiers = @:tmpset0 __tmp__._0;
                                    _err = @:tmpset0 __tmp__._1;
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
            } else if (_e.id.equal(stdgo._internal.crypto.x509.X509__oidextensionauthorityinfoaccess._oidExtensionAuthorityInfoAccess)) {
                var _val = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                if (!@:check2 _val.readASN1((stdgo.Go.setRef(_val) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                    return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                };
                while (!_val.empty()) {
                    var _aiaDER:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if (!@:check2 _val.readASN1((stdgo.Go.setRef(_aiaDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                    };
                    var _method:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier = (new stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier(0, 0) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier);
                    if (!@:check2 _aiaDER.readASN1ObjectIdentifier((stdgo.Go.setRef(_method) : stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>))) {
                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                    };
                    if (!_aiaDER.peekASN1Tag((6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                        continue;
                    };
                    if (!@:check2 _aiaDER.readASN1((stdgo.Go.setRef(_aiaDER) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific())) {
                        return stdgo._internal.errors.Errors_new_.new_(("x509: invalid authority info access" : stdgo.GoString));
                    };
                    if (_method.equal(stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessocsp._oidAuthorityInfoAccessOcsp)) {
                        (@:checkr _out ?? throw "null pointer dereference").oCSPServer = ((@:checkr _out ?? throw "null pointer dereference").oCSPServer.__append__((_aiaDER : stdgo.GoString)?.__copy__()));
                    } else if (_method.equal(stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessissuers._oidAuthorityInfoAccessIssuers)) {
                        (@:checkr _out ?? throw "null pointer dereference").issuingCertificateURL = ((@:checkr _out ?? throw "null pointer dereference").issuingCertificateURL.__append__((_aiaDER : stdgo.GoString)?.__copy__()));
                    };
                };
            } else {
                _unhandled = true;
            };
            if ((_e.critical && _unhandled : Bool)) {
                (@:checkr _out ?? throw "null pointer dereference").unhandledCriticalExtensions = ((@:checkr _out ?? throw "null pointer dereference").unhandledCriticalExtensions.__append__(_e.id));
            };
        };
        return (null : stdgo.Error);
    }
