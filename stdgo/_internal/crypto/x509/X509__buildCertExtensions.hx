package stdgo._internal.crypto.x509;
function _buildCertExtensions(_template:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _subjectIsEmpty:Bool, _authorityKeyId:stdgo.Slice<stdgo.GoUInt8>, _subjectKeyId:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } {
        var _ret = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _err = (null : stdgo.Error);
        _ret = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>((10 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((10 : stdgo.GoInt).toBasic() > 0 ? (10 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>);
        var _n = (0 : stdgo.GoInt);
        if (((_template.keyUsage != (0 : stdgo._internal.crypto.x509.X509_KeyUsage.KeyUsage)) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionKeyUsage._oidExtensionKeyUsage, _template.extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalKeyUsage._marshalKeyUsage(_template.keyUsage);
                _ret[(_n : stdgo.GoInt)] = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if ((((((_template.extKeyUsage.length) > (0 : stdgo.GoInt) : Bool) || ((_template.unknownExtKeyUsage.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionExtendedKeyUsage._oidExtensionExtendedKeyUsage, _template.extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalExtKeyUsage._marshalExtKeyUsage(_template.extKeyUsage, _template.unknownExtKeyUsage);
                _ret[(_n : stdgo.GoInt)] = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if ((_template.basicConstraintsValid && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionBasicConstraints._oidExtensionBasicConstraints, _template.extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalBasicConstraints._marshalBasicConstraints(_template.isCA, _template.maxPathLen, _template.maxPathLenZero);
                _ret[(_n : stdgo.GoInt)] = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if ((((_subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionSubjectKeyId._oidExtensionSubjectKeyId, _template.extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidExtensionSubjectKeyId._oidExtensionSubjectKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_subjectKeyId));
                _ret[(_n : stdgo.GoInt)].value = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        if ((((_authorityKeyId.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionAuthorityKeyId._oidExtensionAuthorityKeyId, _template.extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidExtensionAuthorityKeyId._oidExtensionAuthorityKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface((new stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId(_authorityKeyId) : stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId)));
                _ret[(_n : stdgo.GoInt)].value = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        if ((((((_template.ocspserver.length) > (0 : stdgo.GoInt) : Bool) || ((_template.issuingCertificateURL.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionAuthorityInfoAccess._oidExtensionAuthorityInfoAccess, _template.extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidExtensionAuthorityInfoAccess._oidExtensionAuthorityInfoAccess;
            var _aiaValues:stdgo.Slice<stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess>);
            for (__1 => _name in _template.ocspserver) {
                _aiaValues = (_aiaValues.__append__(({ method : stdgo._internal.crypto.x509.X509__oidAuthorityInfoAccessOcsp._oidAuthorityInfoAccessOcsp, location : ({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) } : stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess)));
            };
            for (__2 => _name in _template.issuingCertificateURL) {
                _aiaValues = (_aiaValues.__append__(({ method : stdgo._internal.crypto.x509.X509__oidAuthorityInfoAccessIssuers._oidAuthorityInfoAccessIssuers, location : ({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue) } : stdgo._internal.crypto.x509.X509_T_authorityInfoAccess.T_authorityInfoAccess)));
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_aiaValues));
                _ret[(_n : stdgo.GoInt)].value = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        if ((((((((_template.dnsnames.length) > (0 : stdgo.GoInt) : Bool) || ((_template.emailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.ipaddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.uris.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName, _template.extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidExtensionSubjectAltName._oidExtensionSubjectAltName;
            _ret[(_n : stdgo.GoInt)].critical = _subjectIsEmpty;
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalSANs._marshalSANs(_template.dnsnames, _template.emailAddresses, _template.ipaddresses, _template.uris);
                _ret[(_n : stdgo.GoInt)].value = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        if ((((_template.policyIdentifiers.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionCertificatePolicies._oidExtensionCertificatePolicies, _template.extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalCertificatePolicies._marshalCertificatePolicies(_template.policyIdentifiers);
                _ret[(_n : stdgo.GoInt)] = __tmp__._0?.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if ((((((((((((_template.permittedDNSDomains.length) > (0 : stdgo.GoInt) : Bool) || ((_template.excludedDNSDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.permittedIPRanges.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.excludedIPRanges.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.permittedEmailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.excludedEmailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.permittedURIDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool) || ((_template.excludedURIDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionNameConstraints._oidExtensionNameConstraints, _template.extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidExtensionNameConstraints._oidExtensionNameConstraints;
            _ret[(_n : stdgo.GoInt)].critical = _template.permittedDNSDomainsCritical;
            var _ipAndMask = function(_ipNet:stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>):stdgo.Slice<stdgo.GoUInt8> {
                var _maskedIP = (_ipNet.ip.mask(_ipNet.mask) : stdgo._internal.net.Net_IP.IP);
                var _ipAndMask = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_maskedIP.length) + (_ipNet.mask.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _ipAndMask = (_ipAndMask.__append__(...(_maskedIP : Array<stdgo.GoUInt8>)));
                _ipAndMask = (_ipAndMask.__append__(...(_ipNet.mask : Array<stdgo.GoUInt8>)));
                return _ipAndMask;
            };
            var _serialiseConstraints = function(_dns:stdgo.Slice<stdgo.GoString>, _ips:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>, _emails:stdgo.Slice<stdgo.GoString>, _uriDomains:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
                var _der = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
                var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
                for (__1 => _name in _dns) {
                    {
                        _err = stdgo._internal.crypto.x509.X509__isIA5String._isIA5String(_name?.__copy__());
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addASN1((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _b.addBytes((_name : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                for (__2 => _ipNet in _ips) {
                    _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addASN1((7 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _b.addBytes(_ipAndMask(_ipNet));
                        });
                    });
                };
                for (__3 => _email in _emails) {
                    {
                        _err = stdgo._internal.crypto.x509.X509__isIA5String._isIA5String(_email?.__copy__());
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addASN1((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _b.addBytes((_email : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                for (__4 => _uriDomain in _uriDomains) {
                    {
                        _err = stdgo._internal.crypto.x509.X509__isIA5String._isIA5String(_uriDomain?.__copy__());
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addASN1((6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _b.addBytes((_uriDomain : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = _b.bytes();
                    _der = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var __tmp__ = _serialiseConstraints(_template.permittedDNSDomains, _template.permittedIPRanges, _template.permittedEmailAddresses, _template.permittedURIDomains), _permitted:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var __tmp__ = _serialiseConstraints(_template.excludedDNSDomains, _template.excludedIPRanges, _template.excludedEmailAddresses, _template.excludedURIDomains), _excluded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
            _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                if (((_permitted.length) > (0 : stdgo.GoInt) : Bool)) {
                    _b.addASN1((0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific().constructed(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addBytes(_permitted);
                    });
                };
                if (((_excluded.length) > (0 : stdgo.GoInt) : Bool)) {
                    _b.addASN1((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific().constructed(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                        _b.addBytes(_excluded);
                    });
                };
            });
            {
                var __tmp__ = _b.bytes();
                _ret[(_n : stdgo.GoInt)].value = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if ((((_template.crldistributionPoints.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidInExtensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidExtensionCRLDistributionPoints._oidExtensionCRLDistributionPoints, _template.extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidExtensionCRLDistributionPoints._oidExtensionCRLDistributionPoints;
            var _crlDp:stdgo.Slice<stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint>);
            for (__1 => _name in _template.crldistributionPoints) {
                var _dp = ({ distributionPoint : ({ fullName : (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>(1, 1, ...[({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue)])) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_RawValue.RawValue>) } : stdgo._internal.crypto.x509.X509_T_distributionPointName.T_distributionPointName) } : stdgo._internal.crypto.x509.X509_T_distributionPoint.T_distributionPoint);
                _crlDp = (_crlDp.__append__(_dp?.__copy__()));
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_crlDp));
                _ret[(_n : stdgo.GoInt)].value = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>; var _1 : stdgo.Error; } = { _0 : ((_ret.__slice__(0, _n) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>).__append__(...(_template.extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension>))), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
