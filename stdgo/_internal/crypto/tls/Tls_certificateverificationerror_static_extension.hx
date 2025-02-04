package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.CertificateVerificationError_asInterface) class CertificateVerificationError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificateverificationerror.CertificateVerificationError> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("tls: failed to verify certificate: %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").err))?.__copy__();
    }
}
