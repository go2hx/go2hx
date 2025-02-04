package stdgo._internal.crypto.tls;
function _marshalCertificate(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _certificate:stdgo._internal.crypto.tls.Tls_certificate.Certificate):Void {
        @:check2r _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            for (_i => _cert in _certificate.certificate) {
                @:check2r _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _b.addBytes(_cert);
                });
                @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        return;
                    };
                    if (_certificate.oCSPStaple != null) {
                        @:check2r _b.addUint16((5 : stdgo.GoUInt16));
                        @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _b.addUint8((1 : stdgo.GoUInt8));
                            @:check2r _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                @:check2r _b.addBytes(_certificate.oCSPStaple);
                            });
                        });
                    };
                    if (_certificate.signedCertificateTimestamps != null) {
                        @:check2r _b.addUint16((18 : stdgo.GoUInt16));
                        @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                for (__65 => _sct in _certificate.signedCertificateTimestamps) {
                                    @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                        @:check2r _b.addBytes(_sct);
                                    });
                                };
                            });
                        });
                    };
                });
            };
        });
    }
