package stdgo._internal.crypto.tls;
function _unmarshalCertificate(_s:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _certificate:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>):Bool {
        var _certList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (!@:check2r _s.readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>))) {
            return false;
        };
        while (!_certList.empty()) {
            var _cert:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            if ((!stdgo._internal.crypto.tls.Tls__readuint24lengthprefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_certList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_cert) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || !@:check2 _certList.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                return false;
            };
            (@:checkr _certificate ?? throw "null pointer dereference").certificate = ((@:checkr _certificate ?? throw "null pointer dereference").certificate.__append__(_cert));
            while (!_extensions.empty()) {
                var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                var _extension__pointer__ = stdgo.Go.pointer(_extension);
                var _extData:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                if ((!@:check2 _extensions.readUint16(_extension__pointer__) || !@:check2 _extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                    return false;
                };
                if ((((@:checkr _certificate ?? throw "null pointer dereference").certificate.length) > (1 : stdgo.GoInt) : Bool)) {
                    continue;
                };
                {
                    final __value__ = _extension;
                    if (__value__ == ((5 : stdgo.GoUInt16))) {
                        var _statusType:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                        var _statusType__pointer__ = stdgo.Go.pointer(_statusType);
                        if ((((!@:check2 _extData.readUint8(_statusType__pointer__) || _statusType != ((1 : stdgo.GoUInt8)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint24lengthprefixed._readUint24LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _certificate ?? throw "null pointer dereference").oCSPStaple) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || ((@:checkr _certificate ?? throw "null pointer dereference").oCSPStaple.length == (0 : stdgo.GoInt)) : Bool)) {
                            return false;
                        };
                    } else if (__value__ == ((18 : stdgo.GoUInt16))) {
                        var _sctList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                        if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _sctList.empty() : Bool)) {
                            return false;
                        };
                        while (!_sctList.empty()) {
                            var _sct:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                            if ((!stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_sctList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef(_sct) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) || (_sct.length == (0 : stdgo.GoInt)) : Bool)) {
                                return false;
                            };
                            (@:checkr _certificate ?? throw "null pointer dereference").signedCertificateTimestamps = ((@:checkr _certificate ?? throw "null pointer dereference").signedCertificateTimestamps.__append__(_sct));
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
