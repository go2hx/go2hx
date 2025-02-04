package stdgo._internal.crypto.x509;
@:structInit @:using(stdgo._internal.crypto.x509.X509_t_authkeyid_static_extension.T_authKeyId_static_extension) class T_authKeyId {
    @:tag("`asn1:\"optional,tag:0\"`")
    public var id : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?id:stdgo.Slice<stdgo.GoUInt8>) {
        if (id != null) this.id = id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_authKeyId(id);
    }
}
