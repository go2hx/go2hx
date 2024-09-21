package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource_static_extension.PTRResource_static_extension) class PTRResource {
    public var ptr : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
    public function new(?ptr:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name) {
        if (ptr != null) this.ptr = ptr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PTRResource(ptr);
    }
}
