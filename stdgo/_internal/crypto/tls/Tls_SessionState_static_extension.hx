package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.SessionState_asInterface) class SessionState_static_extension {
    @:keep
    static public function bytes( _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState> = _s;
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder);
        _b.addUint16(_s._version);
        if (_s._isClient) {
            _b.addUint8((2 : stdgo.GoUInt8));
        } else {
            _b.addUint8((1 : stdgo.GoUInt8));
        };
        _b.addUint16(_s._cipherSuite);
        stdgo._internal.crypto.tls.Tls__addUint64._addUint64((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>), _s._createdAt);
        _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            _b.addBytes(_s._secret);
        });
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            for (__65 => _extra in _s.extra) {
                _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    _b.addBytes(_extra);
                });
            };
        });
        if (_s._extMasterSecret) {
            _b.addUint8((1 : stdgo.GoUInt8));
        } else {
            _b.addUint8((0 : stdgo.GoUInt8));
        };
        if (_s.earlyData) {
            _b.addUint8((1 : stdgo.GoUInt8));
        } else {
            _b.addUint8((0 : stdgo.GoUInt8));
        };
        stdgo._internal.crypto.tls.Tls__marshalCertificate._marshalCertificate((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>), ({ certificate : stdgo._internal.crypto.tls.Tls__certificatesToBytesSlice._certificatesToBytesSlice(_s._peerCertificates), ocspstaple : _s._ocspResponse, signedCertificateTimestamps : _s._scts } : stdgo._internal.crypto.tls.Tls_Certificate.Certificate));
        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
            for (__65 => _chain in _s._verifiedChains) {
                _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                    if ((_chain.length) == ((0 : stdgo.GoInt))) {
                        _b.setError(stdgo._internal.errors.Errors_new_.new_(("tls: internal error: empty verified chain" : stdgo.GoString)));
                        return;
                    };
                    for (__66 => _cert in (_chain.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>>)) {
                        _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                            _b.addBytes(_cert.raw);
                        });
                    };
                });
            };
        });
        if (_s.earlyData) {
            _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>):Void {
                _b.addBytes((_s._alpnProtocol : stdgo.Slice<stdgo.GoUInt8>));
            });
        };
        if (_s._isClient) {
            if ((_s._version >= (772 : stdgo.GoUInt16) : Bool)) {
                stdgo._internal.crypto.tls.Tls__addUint64._addUint64((stdgo.Go.setRef(_b) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_Builder.Builder>), _s._useBy);
                _b.addUint32(_s._ageAdd);
            };
        };
        return _b.bytes();
    }
}
