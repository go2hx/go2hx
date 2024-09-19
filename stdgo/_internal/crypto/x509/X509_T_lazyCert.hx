package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class T_lazyCert {
    public var _rawSubject : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _getCert : () -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } = null;
    public function new(?_rawSubject:stdgo.Slice<stdgo.GoUInt8>, ?_getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }) {
        if (_rawSubject != null) this._rawSubject = _rawSubject;
        if (_getCert != null) this._getCert = _getCert;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lazyCert(_rawSubject, _getCert);
    }
}