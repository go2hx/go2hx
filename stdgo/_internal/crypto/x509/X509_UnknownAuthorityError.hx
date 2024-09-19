package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit @:using(stdgo._internal.crypto.x509.X509_UnknownAuthorityError_static_extension.UnknownAuthorityError_static_extension) class UnknownAuthorityError {
    public var cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
    public var _hintErr : stdgo.Error = (null : stdgo.Error);
    public var _hintCert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate> = (null : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
    public function new(?cert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, ?_hintErr:stdgo.Error, ?_hintCert:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>) {
        if (cert != null) this.cert = cert;
        if (_hintErr != null) this._hintErr = _hintErr;
        if (_hintCert != null) this._hintCert = _hintCert;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new UnknownAuthorityError(cert, _hintErr, _hintCert);
    }
}
