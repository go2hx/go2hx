package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.UnknownAuthorityError_static_extension) abstract UnknownAuthorityError(stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError) from stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError to stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError {
    public var cert(get, set) : Certificate;
    function get_cert():Certificate return this.cert;
    function set_cert(v:Certificate):Certificate {
        this.cert = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return v;
    }
    public var _hintErr(get, set) : stdgo.Error;
    function get__hintErr():stdgo.Error return this._hintErr;
    function set__hintErr(v:stdgo.Error):stdgo.Error {
        this._hintErr = (v : stdgo.Error);
        return v;
    }
    public var _hintCert(get, set) : Certificate;
    function get__hintCert():Certificate return this._hintCert;
    function set__hintCert(v:Certificate):Certificate {
        this._hintCert = (v : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>);
        return v;
    }
    public function new(?cert:Certificate, ?_hintErr:stdgo.Error, ?_hintCert:Certificate) this = new stdgo._internal.crypto.x509.X509_UnknownAuthorityError.UnknownAuthorityError((cert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>), (_hintErr : stdgo.Error), (_hintCert : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
