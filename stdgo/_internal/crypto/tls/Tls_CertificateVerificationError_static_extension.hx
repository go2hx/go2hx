package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.CertificateVerificationError_asInterface) class CertificateVerificationError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError> = _e;
        return _e.err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_CertificateVerificationError.CertificateVerificationError> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("tls: failed to verify certificate: %s" : stdgo.GoString), stdgo.Go.toInterface(_e.err))?.__copy__();
    }
}
