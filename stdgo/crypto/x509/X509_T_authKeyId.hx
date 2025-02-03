package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_authKeyId_static_extension) abstract T_authKeyId(stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId) from stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId to stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId {
    public var id(get, set) : Array<std.UInt>;
    function get_id():Array<std.UInt> return [for (i in this.id) i];
    function set_id(v:Array<std.UInt>):Array<std.UInt> {
        this.id = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?id:Array<std.UInt>) this = new stdgo._internal.crypto.x509.X509_T_authKeyId.T_authKeyId(([for (i in id) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
