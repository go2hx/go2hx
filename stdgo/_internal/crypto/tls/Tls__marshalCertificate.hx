package stdgo._internal.crypto.tls;
function _marshalCertificate(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>, _certificate:stdgo._internal.crypto.tls.Tls_Certificate.Certificate):Void {
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            for (_i => _cert in _certificate.certificate) {
                _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _b.addBytes(_cert);
                });
                _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        return;
                    };
                    if (_certificate.ocspstaple != null) {
                        _b.addUint16((5 : stdgo.GoUInt16));
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _b.addUint8((1 : stdgo.GoUInt8));
                            _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                                _b.addBytes(_certificate.ocspstaple);
                            });
                        });
                    };
                    if (_certificate.signedCertificateTimestamps != null) {
                        _b.addUint16((18 : stdgo.GoUInt16));
                        _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                                for (__65 => _sct in _certificate.signedCertificateTimestamps) {
                                    _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                                        _b.addBytes(_sct);
                                    });
                                };
                            });
                        });
                    };
                });
            };
        });
    }
