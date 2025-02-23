package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.SessionState_asInterface) class SessionState_static_extension {
    @:keep
    @:tdfield
    static public function bytes( _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState> = _s;
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addUint16((@:checkr _s ?? throw "null pointer dereference")._version);
        if ((@:checkr _s ?? throw "null pointer dereference")._isClient) {
            @:check2 _b.addUint8((2 : stdgo.GoUInt8));
        } else {
            @:check2 _b.addUint8((1 : stdgo.GoUInt8));
        };
        @:check2 _b.addUint16((@:checkr _s ?? throw "null pointer dereference")._cipherSuite);
        stdgo._internal.crypto.tls.Tls__adduint64._addUint64((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>), (@:checkr _s ?? throw "null pointer dereference")._createdAt);
        @:check2 _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            @:check2r _b.addBytes((@:checkr _s ?? throw "null pointer dereference")._secret);
        });
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            for (__65 => _extra in (@:checkr _s ?? throw "null pointer dereference").extra) {
                @:check2r _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    @:check2r _b.addBytes(_extra);
                });
            };
        });
        if ((@:checkr _s ?? throw "null pointer dereference")._extMasterSecret) {
            @:check2 _b.addUint8((1 : stdgo.GoUInt8));
        } else {
            @:check2 _b.addUint8((0 : stdgo.GoUInt8));
        };
        if ((@:checkr _s ?? throw "null pointer dereference").earlyData) {
            @:check2 _b.addUint8((1 : stdgo.GoUInt8));
        } else {
            @:check2 _b.addUint8((0 : stdgo.GoUInt8));
        };
        stdgo._internal.crypto.tls.Tls__marshalcertificate._marshalCertificate((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>), ({ certificate : stdgo._internal.crypto.tls.Tls__certificatestobytesslice._certificatesToBytesSlice((@:checkr _s ?? throw "null pointer dereference")._peerCertificates), oCSPStaple : (@:checkr _s ?? throw "null pointer dereference")._ocspResponse, signedCertificateTimestamps : (@:checkr _s ?? throw "null pointer dereference")._scts } : stdgo._internal.crypto.tls.Tls_certificate.Certificate));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            for (__65 => _chain in (@:checkr _s ?? throw "null pointer dereference")._verifiedChains) {
                @:check2r _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        @:check2r _b.setError(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: empty verified chain" : stdgo.GoString)));
                        return;
                    };
                    for (__66 => _cert in (_chain.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>>)) {
                        @:check2r _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _b.addBytes((@:checkr _cert ?? throw "null pointer dereference").raw);
                        });
                    };
                });
            };
        });
        if ((@:checkr _s ?? throw "null pointer dereference").earlyData) {
            @:check2 _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _b.addBytes(((@:checkr _s ?? throw "null pointer dereference")._alpnProtocol : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._isClient) {
            if (((@:checkr _s ?? throw "null pointer dereference")._version >= (772 : stdgo.GoUInt16) : Bool)) {
                stdgo._internal.crypto.tls.Tls__adduint64._addUint64((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>), (@:checkr _s ?? throw "null pointer dereference")._useBy);
                @:check2 _b.addUint32((@:checkr _s ?? throw "null pointer dereference")._ageAdd);
            };
        };
        return @:check2 _b.bytes();
    }
}
