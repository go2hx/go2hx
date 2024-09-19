package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:keep @:allow(stdgo._internal.crypto.x509.X509.SystemRootsError_asInterface) class SystemRootsError_static_extension {
    @:keep
    static public function unwrap( _se:stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError):stdgo.Error {
        @:recv var _se:stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError = _se?.__copy__();
        return _se.err;
    }
    @:keep
    static public function error( _se:stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError):stdgo.GoString {
        @:recv var _se:stdgo._internal.crypto.x509.X509_SystemRootsError.SystemRootsError = _se?.__copy__();
        var _msg = ("x509: failed to load system roots and no roots provided" : stdgo.GoString);
        if (_se.err != null) {
            return ((_msg + ("; " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _se.err.error()?.__copy__() : stdgo.GoString)?.__copy__();
        };
        return _msg?.__copy__();
    }
}