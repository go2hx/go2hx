package stdgo._internal.crypto.tls;
function _unmarshalCertificate(_s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _certificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):Bool {
        var _certList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        var _certList__pointer__ = (stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
        if (!_s.readUint24LengthPrefixed(_certList__pointer__)) {
            return false;
        };
        while (!_certList.empty()) {
            var _cert:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _cert__pointer__ = (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            var _extensions__pointer__ = (stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
            if ((!stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed(_certList__pointer__, _cert__pointer__) || !_certList.readUint16LengthPrefixed(_extensions__pointer__) : Bool)) {
                return false;
            };
            _certificate.certificate = (_certificate.certificate.__append__(_cert));
            while (!_extensions.empty()) {
                var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                var _extension__pointer__ = stdgo.Go.pointer(_extension);
                var _extData:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                var _extData__pointer__ = (stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
                if ((!_extensions.readUint16(_extension__pointer__) || !_extensions.readUint16LengthPrefixed(_extData__pointer__) : Bool)) {
                    return false;
                };
                if (((_certificate.certificate.length) > (1 : stdgo.GoInt) : Bool)) {
                    continue;
                };
                {
                    final __value__ = _extension;
                    if (__value__ == ((5 : stdgo.GoUInt16))) {
                        var _statusType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                        var _statusType__pointer__ = stdgo.Go.pointer(_statusType);
                        if ((((!_extData.readUint8(_statusType__pointer__) || _statusType != ((1 : stdgo.GoUInt8)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed(_extData__pointer__, (stdgo.Go.setRef(_certificate.ocspstaple) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || (_certificate.ocspstaple.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                    } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                        var _sctList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                        var _sctList__pointer__ = (stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>);
                        if ((!_extData.readUint16LengthPrefixed(_sctList__pointer__) || _sctList.empty() : Bool)) {
                            return false;
                        };
                        while (!_sctList.empty()) {
                            var _sct:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                            var _sct__pointer__ = (stdgo.Go.setRef(_sct) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
                            if ((!stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed(_sctList__pointer__, _sct__pointer__) || (_sct.length == (0 : stdgo.GoInt)) : Bool)) {
                                return false;
                            };
                            _certificate.signedCertificateTimestamps = (_certificate.signedCertificateTimestamps.__append__(_sct));
                        };
                    } else {
                        continue;
                    };
                };
                if (!_extData.empty()) {
                    return false;
                };
            };
        };
        return true;
    }
