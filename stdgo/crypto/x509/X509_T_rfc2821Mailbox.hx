package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_rfc2821Mailbox_static_extension) abstract T_rfc2821Mailbox(stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox) from stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox to stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox {
    public var _local(get, set) : String;
    function get__local():String return this._local;
    function set__local(v:String):String {
        this._local = (v : stdgo.GoString);
        return v;
    }
    public var _domain(get, set) : String;
    function get__domain():String return this._domain;
    function set__domain(v:String):String {
        this._domain = (v : stdgo.GoString);
        return v;
    }
    public function new(?_local:String, ?_domain:String) this = new stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox((_local : stdgo.GoString), (_domain : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
