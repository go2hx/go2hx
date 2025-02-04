package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_rfc2821mailbox_static_extension.T_rfc2821Mailbox_static_extension) class T_rfc2821Mailbox {
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
