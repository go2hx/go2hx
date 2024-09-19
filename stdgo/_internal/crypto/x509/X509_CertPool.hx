package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit @:using(stdgo._internal.crypto.x509.X509_CertPool_static_extension.CertPool_static_extension) class CertPool {
    public var _byName : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>);
    public var _lazyCerts : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert> = (null : stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>);
    public var _haveSum : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool> = (null : stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>);
    public var _systemPool : Bool = false;
    public function new(?_byName:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoInt>>, ?_lazyCerts:stdgo.Slice<stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert>, ?_haveSum:stdgo.GoMap<stdgo._internal.crypto.x509.X509_T_sum224.T_sum224, Bool>, ?_systemPool:Bool) {
        if (_byName != null) this._byName = _byName;
        if (_lazyCerts != null) this._lazyCerts = _lazyCerts;
        if (_haveSum != null) this._haveSum = _haveSum;
        if (_systemPool != null) this._systemPool = _systemPool;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CertPool(_byName, _lazyCerts, _haveSum, _systemPool);
    }
}
