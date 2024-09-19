package stdgo._internal.crypto.tls;
function _unmarshalCertificate(_s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>, _certificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>):Bool {
        var _certList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
        if (!_s.readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>))) {
            return false;
        };
        while (!_certList.empty()) {
            var _cert:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
            if ((!stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || !_certList.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool)) {
                return false;
            };
            _certificate.certificate = (_certificate.certificate.__append__(_cert));
            while (!_extensions.empty()) {
                var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                var _extData:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                if ((!_extensions.readUint16(stdgo.Go.pointer(_extension)) || !_extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) : Bool)) {
                    return false;
                };
                if (((_certificate.certificate.length) > (1 : stdgo.GoInt) : Bool)) {
                    continue;
                };
                {
                    final __value__ = _extension;
                    if (__value__ == ((5 : stdgo.GoUInt16))) {
                        var _statusType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                        if ((((!_extData.readUint8(stdgo.Go.pointer(_statusType)) || _statusType != ((1 : stdgo.GoUInt8)) : Bool) || !stdgo._internal.crypto.tls.Tls__readUint24LengthPrefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_certificate.ocspstaple) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || (_certificate.ocspstaple.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                    } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                        var _sctList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
                        if ((!_extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>)) || _sctList.empty() : Bool)) {
                            return false;
                        };
                        while (!_sctList.empty()) {
                            var _sct:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                            if ((!stdgo._internal.crypto.tls.Tls__readUint16LengthPrefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (stdgo.Go.setRef(_sct) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_sct.length == (0 : stdgo.GoInt)) : Bool)) {
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
