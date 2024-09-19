package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource_static_extension.AAAAResource_static_extension) class AAAAResource {
    public var aaaa : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16, ...[for (i in 0 ... 16) (0 : stdgo.GoUInt8)]);
    public function new(?aaaa:stdgo.GoArray<stdgo.GoUInt8>) {
        if (aaaa != null) this.aaaa = aaaa;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new AAAAResource(aaaa);
    }
}
