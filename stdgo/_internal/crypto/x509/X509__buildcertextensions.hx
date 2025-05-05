package stdgo._internal.crypto.x509;
function _buildCertExtensions(_template:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _subjectIsEmpty:Bool, _authorityKeyId:stdgo.Slice<stdgo.GoUInt8>, _subjectKeyId:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } {
        var _ret = (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _err = (null : stdgo.Error);
        _ret = (new stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>((10 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((10 : stdgo.GoInt).toBasic() > 0 ? (10 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension)]) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>);
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1099"
        if ((((@:checkr _template ?? throw "null pointer dereference").keyUsage != (0 : stdgo._internal.crypto.x509.X509_keyusage.KeyUsage)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionkeyusage._oidExtensionKeyUsage, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalkeyusage._marshalKeyUsage((@:checkr _template ?? throw "null pointer dereference").keyUsage);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1102"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1103"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1105"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1108"
        if (((((((@:checkr _template ?? throw "null pointer dereference").extKeyUsage.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").unknownExtKeyUsage.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionextendedkeyusage._oidExtensionExtendedKeyUsage, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalextkeyusage._marshalExtKeyUsage((@:checkr _template ?? throw "null pointer dereference").extKeyUsage, (@:checkr _template ?? throw "null pointer dereference").unknownExtKeyUsage);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1111"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1112"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1114"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1117"
        if (((@:checkr _template ?? throw "null pointer dereference").basicConstraintsValid && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionbasicconstraints._oidExtensionBasicConstraints, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalbasicconstraints._marshalBasicConstraints((@:checkr _template ?? throw "null pointer dereference").isCA, (@:checkr _template ?? throw "null pointer dereference").maxPathLen, (@:checkr _template ?? throw "null pointer dereference").maxPathLenZero);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1119"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1120"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1122"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1125"
        if ((((_subjectKeyId.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionsubjectkeyid._oidExtensionSubjectKeyId, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionsubjectkeyid._oidExtensionSubjectKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_subjectKeyId));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1128"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1129"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1131"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1134"
        if ((((_authorityKeyId.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionauthoritykeyid._oidExtensionAuthorityKeyId;
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId(_authorityKeyId) : stdgo._internal.crypto.x509.X509_t_authkeyid.T_authKeyId))));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1137"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1138"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1140"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1143"
        if (((((((@:checkr _template ?? throw "null pointer dereference").oCSPServer.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").issuingCertificateURL.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionauthorityinfoaccess._oidExtensionAuthorityInfoAccess, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionauthorityinfoaccess._oidExtensionAuthorityInfoAccess;
            var _aiaValues:stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1147"
            for (__1 => _name in (@:checkr _template ?? throw "null pointer dereference").oCSPServer) {
                _aiaValues = (_aiaValues.__append__(({ method : stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessocsp._oidAuthorityInfoAccessOcsp, location : ({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess)) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess>);
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1153"
            for (__2 => _name in (@:checkr _template ?? throw "null pointer dereference").issuingCertificateURL) {
                _aiaValues = (_aiaValues.__append__(({ method : stdgo._internal.crypto.x509.X509__oidauthorityinfoaccessissuers._oidAuthorityInfoAccessIssuers, location : ({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue) } : stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess)) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_authorityinfoaccess.T_authorityInfoAccess>);
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_aiaValues));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1160"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1161"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1163"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1166"
        if (((((((((@:checkr _template ?? throw "null pointer dereference").dNSNames.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").emailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").iPAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").uRIs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionsubjectaltname._oidExtensionSubjectAltName;
            _ret[(_n : stdgo.GoInt)].critical = _subjectIsEmpty;
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalsans._marshalSANs((@:checkr _template ?? throw "null pointer dereference").dNSNames, (@:checkr _template ?? throw "null pointer dereference").emailAddresses, (@:checkr _template ?? throw "null pointer dereference").iPAddresses, (@:checkr _template ?? throw "null pointer dereference").uRIs);
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1174"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1175"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1177"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1180"
        if (((((@:checkr _template ?? throw "null pointer dereference").policyIdentifiers.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensioncertificatepolicies._oidExtensionCertificatePolicies, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__marshalcertificatepolicies._marshalCertificatePolicies((@:checkr _template ?? throw "null pointer dereference").policyIdentifiers);
                _ret[(_n : stdgo.GoInt)] = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1183"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1184"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1186"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1189"
        if (((((((((((((@:checkr _template ?? throw "null pointer dereference").permittedDNSDomains.length) > (0 : stdgo.GoInt) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").excludedDNSDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").permittedIPRanges.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").excludedIPRanges.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").permittedEmailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").excludedEmailAddresses.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").permittedURIDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _template ?? throw "null pointer dereference").excludedURIDomains.length) > (0 : stdgo.GoInt) : Bool) : Bool)) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensionnameconstraints._oidExtensionNameConstraints, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensionnameconstraints._oidExtensionNameConstraints;
            _ret[(_n : stdgo.GoInt)].critical = (@:checkr _template ?? throw "null pointer dereference").permittedDNSDomainsCritical;
            var _ipAndMask = function(_ipNet:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>):stdgo.Slice<stdgo.GoUInt8> {
                var _maskedIP = ((@:checkr _ipNet ?? throw "null pointer dereference").iP.mask((@:checkr _ipNet ?? throw "null pointer dereference").mask) : stdgo._internal.net.Net_ip.IP);
                var _ipAndMask = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_maskedIP.length) + ((@:checkr _ipNet ?? throw "null pointer dereference").mask.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                _ipAndMask = (_ipAndMask.__append__(...(_maskedIP : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _ipAndMask = (_ipAndMask.__append__(...((@:checkr _ipNet ?? throw "null pointer dereference").mask : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1202"
                return _ipAndMask;
            };
            var _serialiseConstraints = function(_dns:stdgo.Slice<stdgo.GoString>, _ips:stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>, _emails:stdgo.Slice<stdgo.GoString>, _uriDomains:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
                var _der = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
                var _b:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1208"
                for (__1 => _name in _dns) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1209"
                    {
                        _err = stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_name?.__copy__());
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1210"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1213"
                    _b.addASN1((48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1214"
                        _b.addASN1((2 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1215"
                            _b.addBytes((_name : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1220"
                for (__2 => _ipNet in _ips) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1221"
                    _b.addASN1((48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1222"
                        _b.addASN1((7 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1223"
                            _b.addBytes(_ipAndMask(_ipNet));
                        });
                    });
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1228"
                for (__3 => _email in _emails) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1229"
                    {
                        _err = stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_email?.__copy__());
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1230"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1233"
                    _b.addASN1((48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1234"
                        _b.addASN1((1 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1235"
                            _b.addBytes((_email : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1240"
                for (__4 => _uriDomain in _uriDomains) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1241"
                    {
                        _err = stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_uriDomain?.__copy__());
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1242"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                                _der = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1245"
                    _b.addASN1((48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1246"
                        _b.addASN1((6 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1247"
                            _b.addBytes((_uriDomain : stdgo.Slice<stdgo.GoUInt8>));
                        });
                    });
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1252"
                return ({
                    @:explicitConversion final __tmp__ = _b.bytes();
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
            };
            var __tmp__ = _serialiseConstraints((@:checkr _template ?? throw "null pointer dereference").permittedDNSDomains, (@:checkr _template ?? throw "null pointer dereference").permittedIPRanges, (@:checkr _template ?? throw "null pointer dereference").permittedEmailAddresses, (@:checkr _template ?? throw "null pointer dereference").permittedURIDomains), _permitted:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1256"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1257"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var __tmp__ = _serialiseConstraints((@:checkr _template ?? throw "null pointer dereference").excludedDNSDomains, (@:checkr _template ?? throw "null pointer dereference").excludedIPRanges, (@:checkr _template ?? throw "null pointer dereference").excludedEmailAddresses, (@:checkr _template ?? throw "null pointer dereference").excludedURIDomains), _excluded:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1261"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1262"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _b:_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1266"
            _b.addASN1((48 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1267"
                if (((_permitted.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1268"
                    _b.addASN1((0 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed(), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1269"
                        _b.addBytes(_permitted);
                    });
                };
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1273"
                if (((_excluded.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1274"
                    _b.addASN1((1 : _internal.vendor.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed(), function(_b:stdgo.Ref<_internal.vendor.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1275"
                        _b.addBytes(_excluded);
                    });
                };
            });
            {
                var __tmp__ = _b.bytes();
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1281"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1282"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : _err };
                    _ret = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1284"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1287"
        if (((((@:checkr _template ?? throw "null pointer dereference").cRLDistributionPoints.length) > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.crypto.x509.X509__oidinextensions._oidInExtensions(stdgo._internal.crypto.x509.X509__oidextensioncrldistributionpoints._oidExtensionCRLDistributionPoints, (@:checkr _template ?? throw "null pointer dereference").extraExtensions) : Bool)) {
            _ret[(_n : stdgo.GoInt)].id = stdgo._internal.crypto.x509.X509__oidextensioncrldistributionpoints._oidExtensionCRLDistributionPoints;
            var _crlDp:stdgo.Slice<stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint>);
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1292"
            for (__1 => _name in (@:checkr _template ?? throw "null pointer dereference").cRLDistributionPoints) {
                var _dp = ({ distributionPoint : ({ fullName : (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>(1, 1, ...[({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)])) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>) } : stdgo._internal.crypto.x509.X509_t_distributionpointname.T_distributionPointName) } : stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint);
                _crlDp = (_crlDp.__append__(_dp?.__copy__()) : stdgo.Slice<stdgo._internal.crypto.x509.X509_t_distributionpoint.T_distributionPoint>);
            };
            {
                var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_crlDp));
                _ret[(_n : stdgo.GoInt)].value = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1304"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1305"
                return { _0 : _ret, _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1307"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/x509.go#L1314"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>; var _1 : stdgo.Error; } = { _0 : ((_ret.__slice__(0, _n) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>).__append__(...((@:checkr _template ?? throw "null pointer dereference").extraExtensions : Array<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>)) : stdgo.Slice<stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension>), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
