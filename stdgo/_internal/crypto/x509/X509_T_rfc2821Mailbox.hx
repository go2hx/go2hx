package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
@:structInit class T_rfc2821Mailbox {
    public var _local : stdgo.GoString = "";
    public var _domain : stdgo.GoString = "";
    public function new(?_local:stdgo.GoString, ?_domain:stdgo.GoString) {
        if (_local != null) this._local = _local;
        if (_domain != null) this._domain = _domain;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rfc2821Mailbox(_local, _domain);
    }
}
