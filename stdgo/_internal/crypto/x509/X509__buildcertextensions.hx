package stdgo._internal.crypto.x509;
function _buildCertExtensions(_template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _subjectIsEmpty:Bool, _authorityKeyId:stdgo.Slice<stdgo.GoUInt8>, _subjectKeyId:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } {
        var _ret = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _err = (null : stdgo.Error);
        _ret = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>((10 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((10 : stdgo.GoInt).toBasic() > 0 ? (10 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        var _n = (0 : stdgo.GoInt);
        if ((((@:checkr _template ?? throw "null pointer dereference").keyUsage != (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionkeyusage._oidExtensionKeyUsage, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalkeyusage._marshalKeyUsage((@:checkr _template ?? throw "null pointer dereference").keyUsage);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if (((((((@:checkr _template ?? throw "null pointer dereference").extKeyUsage.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").unknownExtKeyUsage.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionextendedkeyusage._oidExtensionExtendedKeyUsage, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalextkeyusage._marshalExtKeyUsage((@:checkr _template ?? throw "null pointer dereference").extKeyUsage, (@:checkr _template ?? throw "null pointer dereference").unknownExtKeyUsage);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if (((@:checkr _template ?? throw "null pointer dereference").basicConstraintsValid && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionbasicconstraints._oidExtensionBasicConstraints, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalbasicconstraints._marshalBasicConstraints((@:checkr _template ?? throw "null pointer dereference").isCA, (@:checkr _template ?? throw "null pointer dereference").maxPathLen, (@:checkr _template ?? throw "null pointer dereference").maxPathLenZero);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if ((((_subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionsubjectkeyid._oidExtensionSubjectKeyId, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionsubjectkeyid._oidExtensionSubjectKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_subjectKeyId));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        if ((((_authorityKeyId.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId(_authorityKeyId) : stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId))));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        if (((((((@:checkr _template ?? throw "null pointer dereference").oCSPServer.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").issuingCertificateURL.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionauthorityinfoaccess._oidExtensionAuthorityInfoAccess, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionauthorityinfoaccess._oidExtensionAuthorityInfoAccess;
            var _aiaValues:stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess>);
            for (__1 => _name in (@:checkr _template ?? throw "null pointer dereference").oCSPServer) {
                _aiaValues = (_aiaValues.__append__(({ method : stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessocsp._oidAuthorityInfoAccessOcsp, location : ({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess)));
            };
            for (__2 => _name in (@:checkr _template ?? throw "null pointer dereference").issuingCertificateURL) {
                _aiaValues = (_aiaValues.__append__(({ method : stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessissuers._oidAuthorityInfoAccessIssuers, location : ({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess)));
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_aiaValues));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        if (((((((((@:checkr _template ?? throw "null pointer dereference").dNSNames.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").emailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").iPAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").uRIs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName;
            _ret[(_n : stdgo.GoInt)].critical = _subjectIsEmpty;
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalsans._marshalSANs((@:checkr _template ?? throw "null pointer dereference").dNSNames, (@:checkr _template ?? throw "null pointer dereference").emailAddresses, (@:checkr _template ?? throw "null pointer dereference").iPAddresses, (@:checkr _template ?? throw "null pointer dereference").uRIs);
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        if (((((@:checkr _template ?? throw "null pointer dereference").policyIdentifiers.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensioncertificatepolicies._oidExtensionCertificatePolicies, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalcertificatepolicies._marshalCertificatePolicies((@:checkr _template ?? throw "null pointer dereference").policyIdentifiers);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if (((((((((((((@:checkr _template ?? throw "null pointer dereference").permittedDNSDomains.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").excludedDNSDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").permittedIPRanges.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").excludedIPRanges.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").permittedEmailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").excludedEmailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").permittedURIDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").excludedURIDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionnameconstraints._oidExtensionNameConstraints, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionnameconstraints._oidExtensionNameConstraints;
            _ret[(_n : stdgo.GoInt)].critical = (@:checkr _template ?? throw "null pointer dereference").permittedDNSDomainsCritical;
            var _ipAndMask = function(_ipNet:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>):stdgo.Slice<stdgo.GoUInt8> {
                var _maskedIP = ((@:checkr _ipNet ?? throw "null pointer dereference").iP.mask((@:checkr _ipNet ?? throw "null pointer dereference").mask) : stdgo._internal.net.Net_ip.IP);
                var _ipAndMask = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_maskedIP.length) + ((@:checkr _ipNet ?? throw "null pointer dereference").mask.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _ipAndMask = (_ipAndMask.__append__(...(_maskedIP : Array<stdgo.GoUInt8>)));
                _ipAndMask = (_ipAndMask.__append__(...((@:checkr _ipNet ?? throw "null pointer dereference").mask : Array<stdgo.GoUInt8>)));
                return _ipAndMask;
            };
            var _serialiseConstraints = function(_dns:stdgo.Slice<stdgo.GoString>, _ips:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>, _emails:stdgo.Slice<stdgo.GoString>, _uriDomains:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
                var _der = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
                var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
                for (__1 => _name in _dns) {
                    {
                        _err = stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_name?.__copy__());
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    @:check2 _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addASN1((2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _b.addBytes((_name : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                for (__2 => _ipNet in _ips) {
                    @:check2 _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addASN1((7 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _b.addBytes(_ipAndMask(_ipNet));
                        });
                    });
                };
                for (__3 => _email in _emails) {
                    {
                        _err = stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_email?.__copy__());
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    @:check2 _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addASN1((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _b.addBytes((_email : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                for (__4 => _uriDomain in _uriDomains) {
                    {
                        _err = stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_uriDomain?.__copy__());
                        if (_err != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    @:check2 _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addASN1((6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _b.addBytes((_uriDomain : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                return {
                    final __tmp__ = @:check2 _b.bytes();
                    _der = __tmp__._0;
                    _err = __tmp__._1;
                    { _0 : _der, _1 : _err };
                };
            };
            var __tmp__ = _serialiseConstraints((@:checkr _template ?? throw "null pointer dereference").permittedDNSDomains, (@:checkr _template ?? throw "null pointer dereference").permittedIPRanges, (@:checkr _template ?? throw "null pointer dereference").permittedEmailAddresses, (@:checkr _template ?? throw "null pointer dereference").permittedURIDomains), _permitted:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var __tmp__ = _serialiseConstraints((@:checkr _template ?? throw "null pointer dereference").excludedDNSDomains, (@:checkr _template ?? throw "null pointer dereference").excludedIPRanges, (@:checkr _template ?? throw "null pointer dereference").excludedEmailAddresses, (@:checkr _template ?? throw "null pointer dereference").excludedURIDomains), _excluded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
            @:check2 _b.addASN1((48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                if (((_permitted.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _b.addASN1((0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addBytes(_permitted);
                    });
                };
                if (((_excluded.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _b.addASN1((1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed(), function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addBytes(_excluded);
                    });
                };
            });
            {
                var __tmp__ = @:check2 _b.bytes();
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n++;
        };
        if (((((@:checkr _template ?? throw "null pointer dereference").cRLDistributionPoints.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensioncrldistributionpoints._oidExtensionCRLDistributionPoints, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensioncrldistributionpoints._oidExtensionCRLDistributionPoints;
            var _crlDp:stdgo.Slice<stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint>);
            for (__1 => _name in (@:checkr _template ?? throw "null pointer dereference").cRLDistributionPoints) {
                var _dp = ({ distributionPoint : ({ fullName : (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>(1, 1, ...[({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)])) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) } : stdgo._internal.crypto.x509.X509_t_distributionpointname.T_distributionPointName) } : stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint);
                _crlDp = (_crlDp.__append__(_dp?.__copy__()));
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_crlDp));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
            _n++;
        };
        return {
            final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : ((_ret.__slice__(0, _n) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>).__append__(...((@:checkr _template ?? throw "null pointer dereference").extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>))), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
